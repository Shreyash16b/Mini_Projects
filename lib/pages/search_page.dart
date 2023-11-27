import 'package:chat_app/helper/helper_function.dart';
import 'package:chat_app/pages/chat_page.dart';
import 'package:chat_app/service/database_service.dart';
import 'package:chat_app/widgets/widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController searchController = TextEditingController();
  bool _isLoading = false;
  QuerySnapshot? searchSnapshot;
  bool hasUserSearched = false;
  String userName = "";
  User? user;
  bool isJoined = false;

  @override
  void initState() {
    super.initState();
    getCurrentUserIdAndName();
  }

  getCurrentUserIdAndName() async {
    await HelperFunctions.getUserNamefromSF().then((value) {
      setState(() {
        userName = value!;
      });
    });
    user = FirebaseAuth.instance.currentUser;
  }

  String getName(String r) {
    return r.substring(r.indexOf("_") + 1);
  }

  String getId(String r) {
    return r.substring(0, r.indexOf('_'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text(
          "Search",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 27,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            color: Theme.of(context).primaryColor,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: searchController,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: "Search Groups...",
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                          color: Colors.white.withOpacity(0.7), fontSize: 16),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    initiateSearch();
                  },
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.white.withOpacity(0.1),
                    ),
                    child: Icon(
                      Icons.search,
                      color: Colors.white.withOpacity(0.7),
                    ),
                  ),
                )
              ],
            ),
          ),
          _isLoading
              ? Center(
                  child: CircularProgressIndicator(
                  color: Theme.of(context).primaryColor,
                ))
              : groupList(),
        ],
      ),
    );
  }

  initiateSearch() async {
    if (searchController.text.isNotEmpty) {
      setState(() {
        _isLoading = true;
      });
      await DatabaseService()
          .searchByName(searchController.text)
          .then((snapshot) {
        setState(() {
          searchSnapshot = snapshot;
          _isLoading = false;
          hasUserSearched = true;
        });
      });
    }
  }

  groupList() {
    return hasUserSearched
        ? ListView.builder(
            shrinkWrap: true,
            itemCount: searchSnapshot!.docs.length,
            itemBuilder: (context, index) {
              return groupTile(
                  userName,
                  searchSnapshot!.docs[index]["groupName"],
                  searchSnapshot!.docs[index]["groupId"],
                  searchSnapshot!.docs[index]["admin"]);
            })
        : Container(
            child: Text("Group Info"),
          );
  }

  joinedOrNot(
      String userName, String groupName, String groupId, String admin) async {
    await DatabaseService(uid: user!.uid)
        .isUserJoined(groupName, groupId, userName)
        .then((value) {
      setState(() {
        isJoined = value;
      });
    });
  }

  Widget groupTile(
      String userName, String groupName, String groupId, String admin) {
    joinedOrNot(userName, groupName, groupId, admin);
    return ListTile(
      contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      leading: CircleAvatar(
        radius: 30,
        backgroundColor: Theme.of(context).primaryColor,
        child: Text(
          groupName.substring(0, 1).toUpperCase(),
          style: const TextStyle(color: Colors.white),
        ),
      ),
      title: Text(
        groupName,
        style: const TextStyle(fontWeight: FontWeight.w600),
      ),
      subtitle: Text(
        "Admin : ${getName(admin)}",
      ),
      trailing: InkWell(
        onTap: () async {
          await DatabaseService(uid: user!.uid)
              .toggleGroupJoin(groupName, groupId, userName)
              .then((value) {
            if (isJoined) {
              showSnackBar(context, "Successfully Joined $groupName", Colors.green);
              Future.delayed(const Duration(seconds: 2), () {
                nextScreenReplace(
                    context,
                    ChatPage(
                        userName: userName,
                        groupId: groupId,
                        groupName: groupName));
              });
            } else {
              showSnackBar(context, "Left the group $groupName", Colors.red);
            }
            setState(() {
              isJoined = !isJoined;
            });
          });
        },
        child: isJoined
            ? Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black,
                  border: Border.all(color: Colors.white, width: 1),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: const Text(
                  "Joined",
                  style: TextStyle(color: Colors.white),
                ),
              )
            : Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Theme.of(context).primaryColor,
                  border: Border.all(color: Colors.white, width: 1),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: const Text(
                  "Join Now",
                  style: TextStyle(color: Colors.white),
                ),
              ),
      ),
    );
  }
}
