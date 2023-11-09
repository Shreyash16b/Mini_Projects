import 'package:flutter/material.dart';
import 'package:practice_app/utils/routes.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  String name = "";

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      await Future.delayed(const Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Theme.of(context).canvasColor,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.asset("assets/images/practice_pic.png",
                    fit: BoxFit.cover),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Welcome $name",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 32),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: "Enter Username",
                            labelText: "Username",
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Username cannot be empty";
                            } else if (value.length < 4) {
                              return "Username must be at least 4 characters long";
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: const InputDecoration(
                            hintText: "Enter Password",
                            labelText: "Password",
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Password cannot be empty";
                            } else if (value.length < 8) {
                              return "Password must be at least 8 characters long";
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),

                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              gradient: const LinearGradient(colors: [
                                Color.fromARGB(255, 2, 173, 102),
                                Colors.blue
                              ])),
                          child: InkWell(
                            onTap: () => moveToHome(context),
                            child: Container(
                              // duration: const Duration(seconds: 1),
                              width: 150,
                              height: 50,
                              // color: Colors.deepPurple,
                              alignment: Alignment.center,
                              // decoration: BoxDecoration(
                              //     color: Colors.deepPurple,
                              // shape: changeButton
                              //     ? BoxShape.circle
                              //     : BoxShape.rectangle,
                              // ),
                              child: const Text(
                                "Login",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),

                        // ElevatedButton(
                        //   onPressed: () => moveToHome(context),
                        //   style: TextButton.styleFrom(
                        //       minimumSize: const Size(150, 40)),
                        //   child: const Text("Login"),
                        // )
                      ],
                    ))
              ],
            ),
          ),
        ));
  }
}
