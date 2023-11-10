import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final BtnClr;
  final String BtnTxt;
  final TxtClr;
  final btnpress;

  MyButton({this.BtnClr, required this.BtnTxt, this.TxtClr, this.btnpress});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: BtnClr,
          ),
          child: InkWell(
            splashColor: Colors.grey,
            onTap: btnpress,
            child: Container(
              child: Center(
                  child: Text(
                BtnTxt,
                style: TextStyle(color: TxtClr, fontSize: 20),
              )),
            ),
          ),
        ),
      ),
    );
  }
}
