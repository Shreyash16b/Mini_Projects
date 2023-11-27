import 'package:chat_app/helper/helper_function.dart';
import 'package:chat_app/pages/home_page.dart';
import 'package:chat_app/pages/register_page.dart';
import 'package:chat_app/service/auth_service.dart';
import 'package:chat_app/service/database_service.dart';
import 'package:chat_app/widgets/widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isLoading = false;
  AuthService authservice = AuthService();
  final formKey = GlobalKey<FormState>();
  String email = "";
  String password = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: _isLoading
          ? Center(
              child: CircularProgressIndicator(
                  color: Theme.of(context).primaryColor),
            )
          : SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
                child: Form(
                    key: formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "Groupie",
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Login now to see what they are talking",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400),
                        ),
                        Image.asset("assets/login.png"),
                        TextFormField(
                          decoration: textInputDecoration.copyWith(
                              labelText: "Email",
                              prefixIcon: Icon(
                                Icons.email,
                                color: Theme.of(context).primaryColor,
                              )),
                          onChanged: (val) {
                            setState(() {
                              email = val;
                            });
                          },
                          validator: (val) {
                            return RegExp(
                                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                    .hasMatch(val!)
                                ? null
                                : "Please enter a valid email";
                          },
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: textInputDecoration.copyWith(
                              labelText: "Password",
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Theme.of(context).primaryColor,
                              )),
                          validator: (value) {
                            if (value!.length < 6) {
                              return "Password must be at least 6 characters";
                            } else {
                              return null;
                            }
                          },
                          onChanged: (val) {
                            setState(() {
                              password = val;
                            });
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Theme.of(context).primaryColor,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25))),
                            onPressed: () {
                              login();
                            },
                            child: const Text(
                              "Sign In",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        Text.rich(
                          TextSpan(
                              text: "Don't have an account ",
                              style: const TextStyle(
                                  fontSize: 14, color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(
                                    text: "Register here ",
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        nextScreenReplace(
                                            context, const RegisterPage());
                                      },
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        color: Colors.black,
                                        decoration: TextDecoration.underline))
                              ]),
                        )
                      ],
                    )),
              ),
            ),
    );
  }

  login() async {
    if (formKey.currentState!.validate()) {
      setState(() {
        _isLoading = true;
      });
      await authservice
          .loginWithUserNameandPassword(email, password)
          .then((value) async {
        if (value == true) {
          QuerySnapshot snapshot =
              await DatabaseService(uid: FirebaseAuth.instance.currentUser!.uid)
                  .gettingUserData(email);
          // saving the values to our shared preferences
          await HelperFunctions.saveUserLoggedInStatus(true);
          await HelperFunctions.saveUserEmailSF(email);
          await HelperFunctions.saveUserNameSF(snapshot.docs[0]["fullName"]);
          nextScreenReplace(context, const HomePage());
        } else {
          showSnackBar(context, value, Colors.red);
          setState(() {
            _isLoading = false;
          });
        }
      });
    }
  }

  // void login() async {
  //   if (formKey.currentState!.validate()) {
  //     setState(() {
  //       _isLoading = true;
  //     });
  //     await authservice
  //         .loginWithUserNameandPassword(email, password)
  //         .then((value) => () async {
  //               print(value);
  //               if (value == true) {
  //                 print("true");
  //                 Navigator.push(
  //                     context,
  //                     MaterialPageRoute(
  //                         builder: ((context) => const HomePage())));
  //                 QuerySnapshot snapshot = await DatabaseService(
  //                         uid: FirebaseAuth.instance.currentUser!.uid)
  //                     .gettingUserData(email);
  //                 await HelperFunctions.saveUserLoggedInStatus(true);
  //                 await HelperFunctions.saveUserNameSF(
  //                     snapshot.docs[0]["fullName"]);
  //                 await HelperFunctions.saveUserEmailSF(email);
  //               } else {
  //                 print(value);
  //                 showSnackBar(context, value, Colors.red);
  //                 setState(() {
  //                   _isLoading = false;
  //                 });
  //               }
  //             });
  //   }
  // }
}
