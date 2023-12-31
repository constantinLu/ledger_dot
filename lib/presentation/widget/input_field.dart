import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:raven/raven.dart';

class InputField extends StatelessWidget {
  final TextEditingController controller;
  final String? errorText;
  final String? hintText;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? textInputType;

  const InputField({
    super.key,
    required this.controller,
    this.errorText,
    this.hintText = '',
    this.inputFormatters,
    this.textInputType,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          decoration: BoxDecoration(
            color: kcGreyDim,
            borderRadius: BorderRadius.circular(8),
          ),
          child: TextField(
            controller: controller,
            decoration: InputDecoration.collapsed(
              hintText: hintText,
              // hintStyle: GoogleFonts.openSans(
              //   color: kcLightGrey,
              // ),
              filled: true,
              fillColor: kcMediumGrey,
            ),
            inputFormatters: inputFormatters,
            keyboardType: textInputType,
          ),
        ),
        if (errorText != null) ...[
          //verticalSpaceTiny,
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              errorText!,
              // style: ktsBodyRegular.copyWith(
              //   color: Colors.red,
              //   fontSize: 11,
              //   fontWeight: FontWeight.bold,
              // ),
            ),
          ),
        ],
      ],
    );
  }
}
