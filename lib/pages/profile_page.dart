// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:chat_app/helper/helper_function.dart';
import 'package:chat_app/pages/home_page.dart';
import 'package:chat_app/pages/login_page.dart';
import 'package:chat_app/service/auth_service.dart';
import 'package:chat_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  final String userName;
  final String userEmail;
  const ProfilePage({
    super.key,
    required this.userName,
    required this.userEmail,
  });

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  AuthService authservice = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text("Profile",
            style: TextStyle(
                fontSize: 27,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 50),
          children: <Widget>[
            Icon(
              Icons.account_circle,
              size: 150,
              color: Colors.grey[700],
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              widget.userName,
              textAlign: TextAlign.center,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(
              height: 2,
            ),
            ListTile(
              onTap: () {
                nextScreen(context, const HomePage());
              },
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              leading: const Icon(Icons.group),
              title: const Text(
                "Groups",
                style: TextStyle(color: Colors.black),
              ),
            ),
            ListTile(
              onTap: () {},
              selectedColor: Theme.of(context).primaryColor,
              selected: true,
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              leading: const Icon(Icons.group),
              title: const Text(
                "Profile",
                style: TextStyle(color: Colors.black),
              ),
            ),
            ListTile(
              onTap: () async {
                showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text("Logout"),
                        content: const Text("Are you sure you want to Logout?"),
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
                              Navigator.of(context).pushAndRemoveUntil(
                                  MaterialPageRoute(
                                      builder: ((context) =>
                                          const LoginPage())),
                                  (route) => false);
                            },
                            icon: const Icon(
                              Icons.done,
                              color: Colors.green,
                            ),
                          )
                        ],
                      );
                    });
              },
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              leading: const Icon(Icons.exit_to_app),
              title: const Text(
                "Logout",
                style: TextStyle(color: Colors.black),
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 150, horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.account_circle, color: Colors.grey[700], size: 200),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Full Name ", style: TextStyle(fontSize: 17)),
                  Text(widget.userName, style: const TextStyle(fontSize: 17)),
                ],
              ),
              const Divider(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Email ", style: TextStyle(fontSize: 17)),
                  Text(widget.userEmail, style: const TextStyle(fontSize: 17)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
