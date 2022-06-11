import 'package:flutter/material.dart';
import 'package:furrl_assignment/utils/AppManager.dart';
import 'package:furrl_assignment/utils/AppStyle.dart';
import 'package:furrl_assignment/utils/Utils.dart';

class AuthField extends StatelessWidget {
  String hintText;
  TextEditingController controller;
  bool obscureText;
  TextInputType keyboardType;
  Widget? suffixIcon;
  String? Function(String?)? validator;
  Color hintTextColor;

  AuthField({
    required this.hintText,
    required this.controller,
    this.obscureText = false,
    required this.keyboardType,
    this.suffixIcon,
    this.validator,
    this.hintTextColor = AppStyle.blackLight,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Utils.getWidth(context) / 10,
      ),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        keyboardType: keyboardType,
        validator: validator,
        style: AppStyle.generalTextStyle(),
        decoration: InputDecoration(
          isDense: true,
          hintText: hintText,
          hintStyle: AppStyle.generalTextStyle(
            color: hintTextColor,
            fontWeight: AppFontWeight.semiBold,
          ),
          fillColor: AppStyle.white,
          filled: true,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppStyle.white,
            ),
            borderRadius:
            BorderRadius.circular(Utils.getWidth(context) / 10),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppStyle.white,
            ),
            borderRadius:
            BorderRadius.circular(Utils.getWidth(context) / 10),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppStyle.red,
            ),
            borderRadius:
            BorderRadius.circular(Utils.getWidth(context) / 10),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppStyle.red,
            ),
            borderRadius:
            BorderRadius.circular(Utils.getWidth(context) / 10),
          ),
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}
