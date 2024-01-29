// // ignore_for_file: must_be_immutable

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:pin_code_fields/pin_code_fields.dart';
// import 'package:sayali_s_application4/core/app_export.dart';

// class CustomPinCodeTextField extends StatelessWidget {
//   CustomPinCodeTextField({
//     Key? key,
//     required this.context,
//     required this.onChanged,
//     this.alignment,
//     this.controller,
//     this.textStyle,
//     this.hintStyle,
//     this.validator,
//   }) : super(
//           key: key,
//         );

//   final Alignment? alignment;

//   final BuildContext context;

//   final TextEditingController? controller;

//   final TextStyle? textStyle;

//   final TextStyle? hintStyle;

//   Function(String) onChanged;

//   final FormFieldValidator<String>? validator;

//   @override
//   Widget build(BuildContext context) {
//     return alignment != null
//         ? Align(
//             alignment: alignment ?? Alignment.center,
//             child: pinCodeTextFieldWidget,
//           )
//         : pinCodeTextFieldWidget;
//   }

//   Widget get pinCodeTextFieldWidget => PinCodeTextField(
//         appContext: context,
//         controller: controller,
//         length: 4,
//         keyboardType: TextInputType.number,
//         textStyle: textStyle,
//         hintStyle: hintStyle,
//         inputFormatters: [
//           FilteringTextInputFormatter.digitsOnly,
//         ],
//         enableActiveFill: true,
//         pinTheme: PinTheme(
//           fieldHeight: 60.h,
//           fieldWidth: 60.h,
//           shape: PinCodeFieldShape.box,
//           borderRadius: BorderRadius.circular(8.h),
//           inactiveFillColor: theme.colorScheme.primary,
//           activeFillColor: theme.colorScheme.primary,
//           inactiveColor: Colors.transparent,
//           activeColor: Colors.transparent,
//           selectedColor: Colors.transparent,
//         ),
//         onChanged: (value) => onChanged(value),
//         validator: validator,
//       );
// }
// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:sayali_s_application4/core/app_export.dart';

class CustomPinCodeTextField extends StatelessWidget {
  CustomPinCodeTextField({
    Key? key,
    required this.context,
    required this.onChanged,
    this.alignment,
    required this.controller,
    this.textStyle,
    this.hintStyle,
    this.validator,
  }) : super(key: key);

  final Alignment? alignment;
  final BuildContext context;
  final TextEditingController?
      controller; // Change the type to TextEditingController?
  final TextStyle? textStyle;
  final TextStyle? hintStyle;
  Function(String) onChanged;
  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: pinCodeTextFieldWidget,
          )
        : pinCodeTextFieldWidget;
  }

  Widget get pinCodeTextFieldWidget {
    // Access the TextEditingController from Rx if it is Rx
    TextEditingController? effectiveController =
        (controller is Rx<TextEditingController>
            ? controller?.value
            : controller) as TextEditingController?;

    return PinCodeTextField(
      appContext: context,
      controller: effectiveController,
      length: 4,
      keyboardType: TextInputType.number,
      textStyle: textStyle,
      hintStyle: hintStyle,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
      ],
      enableActiveFill: true,
      pinTheme: PinTheme(
        fieldHeight: 60.h,
        fieldWidth: 60.h,
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(8.h),
        inactiveFillColor: theme.colorScheme.primary,
        activeFillColor: theme.colorScheme.primary,
        inactiveColor: Colors.transparent,
        activeColor: Colors.transparent,
        selectedColor: Colors.transparent,
      ),
      onChanged: (value) => onChanged(value),
      validator: validator,
    );
  }
}
