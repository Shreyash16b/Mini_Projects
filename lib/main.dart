import 'package:calc_flutter/buttons.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var eqn = "";
  var res = "";

  final List<String> Btn = [
    "CLR",
    "DEL",
    "%",
    "/",
    "9",
    "8",
    "7",
    "x",
    "6",
    "5",
    "4",
    "-",
    "3",
    "2",
    "1",
    "+",
    "0",
    ".",
    "ANS",
    "="
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white ,
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(height: 50),
                  Container(
                      padding: EdgeInsets.all(15),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        eqn,
                        style: TextStyle(fontSize: 32),
                      )),
                  Container(
                      padding: EdgeInsets.all(15),
                      alignment: Alignment.centerRight,
                      child: Text(
                        res,
                        style: TextStyle(fontSize: 32),
                      ))
                ],
              ),
            ),
          ),
          Expanded(
              flex: 2,
              child: Container(
                  child: GridView.builder(
                      itemCount: Btn.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4),
                      itemBuilder: (BuildContext context, int index) {
                        if (index == 0) {
                          return MyButton(
                              btnpress: () {
                                setState(() {
                                  eqn = "";
                                  res = "";
                                });
                              },
                              BtnTxt: Btn[index],
                              BtnClr: Colors.green,
                              TxtClr: Colors.white);
                        } else if (index == 1) {
                          return MyButton(
                              btnpress: () {
                                setState(() {
                                  eqn = eqn.substring(0, eqn.length - 1);
                                });
                              },
                              BtnTxt: Btn[index],
                              BtnClr: Colors.red,
                              TxtClr: Colors.white);
                        } else if (index == Btn.length - 1) {
                          return MyButton(
                              btnpress: () {
                                setState(() {
                                  eqlPress();
                                });
                              },
                              BtnTxt: Btn[index],
                              BtnClr: const Color.fromARGB(255, 6, 134, 111),
                              TxtClr: Colors.white);
                        } else if (index == Btn.length - 2) {
                          return MyButton(
                              btnpress: () {
                                setState(() {
                                  eqn = res;
                                  res = "";
                                });
                              },
                              BtnTxt: Btn[index],
                              BtnClr: Colors.white,
                              TxtClr: const Color.fromARGB(255, 6, 134, 111));
                        } else {
                          return MyButton(
                            BtnTxt: Btn[index],
                            BtnClr: isOprtr(Btn[index])
                                ? const Color.fromARGB(255, 6, 134, 111)
                                : Colors.white,
                            TxtClr: isOprtr(Btn[index])
                                ? Colors.white
                                : const Color.fromARGB(255, 6, 134, 111),
                            btnpress: () {
                              setState(() {
                                eqn += Btn[index];
                              });
                            },
                          );
                        }
                      }))),
        ],
      ),
    );
  }

  bool isOprtr(String x) {
    if (x == "/" || x == "x" || x == "%" || x == "+" || x == "-") {
      return true;
    }
    return false;
  }

  void eqlPress() {
    String finalQn = eqn;
    finalQn = finalQn.replaceAll("x", "*");
    Parser p = Parser();
    Expression exp = p.parse(finalQn);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);

    res = eval.toString();
  }
}
