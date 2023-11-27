import "package:chat_app/pages/group_info.dart";
import "package:chat_app/service/database_service.dart";
import "package:chat_app/widgets/message_tile.dart";
import "package:chat_app/widgets/widgets.dart";
import "package:cloud_firestore/cloud_firestore.dart";
import "package:firebase_auth/firebase_auth.dart";
import "package:flutter/material.dart";

class ChatPage extends StatefulWidget {
  final String groupId;
  final String groupName;
  final String userName;
  const ChatPage(
      {super.key,
      required this.userName,
      required this.groupId,
      required this.groupName});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  Stream<QuerySnapshot>? chats;
  String admin = "";
  TextEditingController messageController = TextEditingController();

  @override
  void initState() {
    getChatAndAdmin();
    super.initState();
  }

  getChatAndAdmin() {
    DatabaseService().getChats(widget.groupId).then((val) {
      setState(() {
        chats = val;
      });
    });
    DatabaseService().getAdmin(widget.groupId).then((val) {
      setState(() {
        admin = val;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text(widget.groupName),
        backgroundColor: Theme.of(context).primaryColor,
        actions: [
          IconButton(
              onPressed: () {
                nextScreen(
                    context,
                    GroupInfo(
                      groupId: widget.groupId,
                      groupName: widget.groupName,
                      adminName: admin,
                    ));
              },
              icon: const Icon(Icons.info))
        ],
      ),
      body: Stack(
        children: <Widget>[
          // chat messages here
          chatMessages(),
          Container(
            alignment: Alignment.bottomCenter,
            width: MediaQuery.of(context).size.width,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
              width: MediaQuery.of(context).size.width,
              color: Colors.grey[700],
              child: Row(children: [
                Expanded(
                    child: TextFormField(
                  controller: messageController,
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                    hintText: "Send a message...",
                    hintStyle: TextStyle(color: Colors.white, fontSize: 16),
                    border: InputBorder.none,
                  ),
                )),
                const SizedBox(
                  width: 12,
                ),
                GestureDetector(
                  onTap: () {
                    sendMessage();
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Center(
                        child: Icon(
                      Icons.send,
                      color: Colors.white,
                    )),
                  ),
                )
              ]),
            ),
          )
        ],
      ),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       centerTitle: true,
  //       title: Text(widget.groupName),
  //       backgroundColor: Theme.of(context).primaryColor,
  //       actions: [
  //         IconButton(
  //             onPressed: () {
  //               nextScreen(
  //                 context,
  //                 GroupInfo(
  //                   groupId: widget.groupId,
  //                   groupName: widget.groupName,
  //                   adminName: admin,
  //                 ),
  //               );
  //             },
  //             icon: const Icon(
  //               Icons.info,
  //             ))
  //       ],
  //     ),
  //     body: Stack(
  //       children: <Widget>[
  //         chatMessages(),
  //         Container(
  //           width: MediaQuery.of(context).size.width,
  //           alignment: Alignment.bottomCenter,
  //           child: Container(
  //             padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
  //             color: Colors.grey[700],
  //             width: MediaQuery.of(context).size.width,
  //             child: Row(
  //               children: [
  //                 Expanded(
  //                   child: TextFormField(
  //                     controller: messageController,
  //                     style: const TextStyle(color: Colors.white),
  //                     decoration: const InputDecoration(
  //                       hintText: "Send Message....",
  //                       hintStyle: TextStyle(color: Colors.white, fontSize: 16),
  //                       border: InputBorder.none,
  //                     ),
  //                   ),
  //                 ),
  //                 const SizedBox(width: 15),
  //                 GestureDetector(
  //                   onTap: sendMessage(),
  //                   child: Container(
  //                     height: 50,
  //                     width: 50,
  //                     decoration: BoxDecoration(
  //                       color: Theme.of(context).primaryColor,
  //                       borderRadius: BorderRadius.circular(30),
  //                     ),
  //                     child: const Icon(Icons.send, color: Colors.white),
  //                   ),
  //                 )
  //               ],
  //             ),
  //           ),
  //         )
  //       ],
  //     ),
  //   );
  // }

  // chatMessages() {
  //   return StreamBuilder(
  //     stream: chats,
  //     builder: (BuildContext context, AsyncSnapshot snapshot) {
  //       return snapshot.hasData
  //           ? ListView.builder(
  //               itemCount: snapshot.data.docs.length,
  //               itemBuilder: (context, index) {
  //                 return MessageTile(
  //                   message: snapshot.data.docs[index]["message"],
  //                   sender: snapshot.data.docs[index]["sender"],
  //                   sentByMe:
  //                       widget.userName == snapshot.data.docs[index]["sender"],
  //                 );
  //               },
  //             )
  //           : Container();
  //     },
  //   );
  // }

  chatMessages() {
    return StreamBuilder(
      stream: chats,
      builder: (context, AsyncSnapshot snapshot) {
        return snapshot.hasData
            ? ListView.builder(
                itemCount: snapshot.data.docs.length,
                itemBuilder: (context, index) {
                  return MessageTile(
                      message: snapshot.data.docs[index]['message'],
                      sender: snapshot.data.docs[index]['sender'],
                      sentByMe: widget.userName ==
                          snapshot.data.docs[index]['sender']);
                },
              )
            : const Center(
              child: Text(
                  "No message",
                  textAlign: TextAlign.center,
                ),
            );
      },
    );
  }

  sendMessage() {
    if (messageController.text.isNotEmpty) {
      Map<String, dynamic> chatMessageMap = {
        "message": messageController.text,
        "sender": widget.userName,
        "time": DateTime.now().microsecondsSinceEpoch,
      };
      DatabaseService(uid: FirebaseAuth.instance.currentUser!.uid)
          .sendMessage(widget.groupId, chatMessageMap);
      setState(() {
        messageController.clear();
      });
    }
  }
}
