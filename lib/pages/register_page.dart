import 'package:chat_app/helper/helper_function.dart';
import 'package:chat_app/pages/home_page.dart';
import 'package:chat_app/pages/login_page.dart';
import 'package:chat_app/service/auth_service.dart';
import 'package:chat_app/widgets/widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final formKey = GlobalKey<FormState>();
  bool _isLoading = false;
  String email = "";
  String password = "";
  String fullName = "";
  AuthService authservice = AuthService();
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
                          "Create your account now to chat and explore",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400),
                        ),
                        Image.asset("assets/register.png"),
                        const SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          decoration: textInputDecoration.copyWith(
                              labelText: "Full Name",
                              prefixIcon: Icon(
                                Icons.person,
                                color: Theme.of(context).primaryColor,
                              )),
                          onChanged: (val) {
                            setState(() {
                              fullName = val;
                            });
                          },
                          validator: (val) {
                            if (val!.isNotEmpty) {
                              return null;
                            } else {
                              return "Name cannot be empty";
                            }
                          },
                        ),
                        const SizedBox(
                          height: 15,
                        ),
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
                              register();
                            },
                            child: const Text(
                              "Register",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        Text.rich(
                          TextSpan(
                              text: "Already have an account ",
                              style: const TextStyle(
                                  fontSize: 14, color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(
                                    text: "Login Now ",
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        nextScreenReplace(
                                            context, const LoginPage());
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

  void register() async {
    if (formKey.currentState!.validate()) {
      setState(() {
        _isLoading = true;
      });
      await authservice
          .registerUserWithEmailandPassword(fullName, email, password)
          .then((value) async {
        if (value == true) {
          nextScreen(context, const HomePage());
          await HelperFunctions.saveUserLoggedInStatus(true);
          await HelperFunctions.saveUserNameSF(fullName);
          await HelperFunctions.saveUserEmailSF(email);
        } else {
          showSnackBar(context, value, Colors.red);
          setState(() {
            _isLoading = false;
          });
        }
      });
    }
  }
}
