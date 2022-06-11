import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:furrl_assignment/utils/AppManager.dart';
import 'package:furrl_assignment/utils/AppStyle.dart';
import 'package:furrl_assignment/utils/Routes.dart';
import 'package:furrl_assignment/utils/StringsManager.dart';
import 'package:furrl_assignment/utils/Utils.dart';
import 'package:furrl_assignment/widgets/AuthField.dart';
import 'package:furrl_assignment/widgets/BgImageWidget.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {

  final _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown,]);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: BgImageWidget(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    StringsManager.welcomeOnboard,
                    style: AppStyle.generalTextStyle(
                      fontSize: AppFontSize.s18,
                      fontWeight: AppFontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: Utils.getWidth(context) / 20,
                  ),
                  Text(
                    StringsManager.welcomeMessage,
                    style: AppStyle.generalTextStyle(
                      fontSize: AppFontSize.s16,
                      color: AppStyle.blackLight,
                    ),
                  ),
                  SizedBox(
                    height: Utils.getWidth(context) / 20,
                  ),
                  AuthField(
                    hintText: StringsManager.enterYourName,
                    controller: nameController,
                    keyboardType: TextInputType.text,
                  ),
                  SizedBox(
                    height: Utils.getWidth(context) / 20,
                  ),
                  AuthField(
                    hintText: StringsManager.enterYourEmail,
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(
                    height: Utils.getWidth(context) / 20,
                  ),
                  AuthField(
                    hintText: StringsManager.enterYourPassword,
                    controller: passwordController,
                    keyboardType: TextInputType.visiblePassword,
                  ),
                  SizedBox(
                    height: Utils.getWidth(context) / 20,
                  ),
                  AuthField(
                    hintText: StringsManager.confirmYourPassword,
                    controller: confirmPasswordController,
                    keyboardType: TextInputType.visiblePassword,
                  ),
                  SizedBox(
                    height: Utils.getWidth(context) / 10,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: Utils.getWidth(context) / 10,
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Routes.generateId);
                      },
                      child: Center(
                        child: Text(
                          StringsManager.signUp,
                          style: AppStyle.generalTextStyle(
                            color: AppStyle.white,
                            fontSize: AppFontSize.s18,
                            fontWeight: AppFontWeight.bold,
                          ),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: AppStyle.blue,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Utils.getWidth(context) / 25,
                  ),
                  RichText(
                    text: TextSpan(
                      text: StringsManager.alreadyHaveAccount,
                      style: AppStyle.generalTextStyle(),
                      children: [
                        TextSpan(
                          text: StringsManager.signIn,
                          style: AppStyle.generalTextStyle(
                            color: AppStyle.blue,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: Utils.getWidth(context) / 10,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
