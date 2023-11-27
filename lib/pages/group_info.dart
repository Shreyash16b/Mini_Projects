import 'package:chat_app/pages/home_page.dart';
import 'package:chat_app/pages/login_page.dart';
import 'package:chat_app/service/database_service.dart';
import 'package:chat_app/widgets/widgets.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class GroupInfo extends StatefulWidget {
  final String groupId;
  final String groupName;
  final String adminName;
  const GroupInfo(
      {super.key,
      required this.groupId,
      required this.groupName,
      required this.adminName});

  @override
  State<GroupInfo> createState() => _GroupInfoState();
}

class _GroupInfoState extends State<GroupInfo> {
  Stream? members;

  @override
  void initState() {
    getMembers();
    super.initState();
  }

  getMembers() async {
    DatabaseService(uid: FirebaseAuth.instance.currentUser!.uid)
        .getGroupMembers(widget.groupId)
        .then((val) {
      setState(() {
        members = val;
      });
    });
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
        title: const Text("Group Info"),
        elevation: 0.0,
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text("Exit"),
                      content:
                          const Text("Are you sure you want to exit group?"),
                      actions: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.cancel,
                            color: Colors.red,
                          ),
                        ),
                        IconButton(
                          onPressed: () async {
                            DatabaseService(
                                    uid: FirebaseAuth.instance.currentUser!.uid)
                                .toggleGroupJoin(widget.groupName,
                                    widget.groupId, getName(widget.adminName))
                                .whenComplete(() {
                              nextScreenReplace(context, const HomePage());
                            });
                          },
                          icon: const Icon(
                            Icons.done,
                            color: Colors.green,
                          ),
                        )
                      ],
                    );
                  },
                );
              },
              icon: const Icon(Icons.exit_to_app))
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Theme.of(context).primaryColor.withOpacity(0.18),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Theme.of(context).primaryColor,
                    child: Text(
                      widget.groupName.substring(0, 1).toUpperCase(),
                      style: const TextStyle(
                          fontWeight: FontWeight.w500, color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Group : ${widget.groupName}",
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Admin: ${getName(widget.adminName)}",
                        style: const TextStyle(fontWeight: FontWeight.w400),
                      )
                    ],
                  )
                ],
              ),
            ),
            memberList()
          ],
        ),
      ),
    );
  }

  memberList() {
    return StreamBuilder(
      stream: members,
      builder: (context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          if (snapshot.data["members"] != null &&
              snapshot.data["members"].length != 0) {
            return ListView.builder(
              itemCount: snapshot.data["members"].length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundColor: Theme.of(context).primaryColor,
                      child: Text(
                        getName(snapshot.data["members"][index])
                            .substring(0, 1)
                            .toUpperCase(),
                        style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    title: Text(
                      getName(snapshot.data["members"][index]),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      getId(snapshot.data["members"][index]),
                    ),
                  ),
                );
              },
            );
          } else {
            return const Center(
              child: Text("No members",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            );
          }
        } else {
          return Center(
            child: CircularProgressIndicator(
                color: Theme.of(context).primaryColor),
          );
        }
      },
    );
  }
}
