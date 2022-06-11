import 'package:flutter/material.dart';
import 'package:furrl_assignment/services/ApiService.dart';
import 'package:furrl_assignment/utils/AppManager.dart';
import 'package:furrl_assignment/utils/AppStyle.dart';
import 'package:furrl_assignment/utils/Routes.dart';
import 'package:furrl_assignment/utils/StringsManager.dart';
import 'package:furrl_assignment/utils/Utils.dart';
import 'package:furrl_assignment/widgets/BgImageWidget.dart';

class GenerateIdScreen extends StatefulWidget {
  const GenerateIdScreen({Key? key}) : super(key: key);

  @override
  State<GenerateIdScreen> createState() => _GenerateIdScreenState();
}

class _GenerateIdScreenState extends State<GenerateIdScreen> {

  bool isLoading = false;
  String id = '';
  bool isIdGenerated = false;

  void showLoading() {
    setState(() {
      isLoading = true;
    });
  }

  void hideLoading() {
    setState(() {
      isLoading = false;
    });
  }

  void generateId() {
    showLoading();
    ApiService().generateId().then((value) {
      setState(() {
        id = value;
        isIdGenerated = true;
      });
      hideLoading();
    }).catchError((onError) {
      Utils.showToast(message: '${onError.toString()}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: isIdGenerated ? FloatingActionButton(
        heroTag: 'Task-3',
        tooltip: 'Task-3',
        backgroundColor: AppStyle.blue,
        onPressed: () {
          Navigator.pushNamed(context, Routes.authorsList);
        },
        child: Icon(
          Icons.arrow_forward,
          color: AppStyle.white,
        ),
      ) : Container(
        width: 0.0,
        height: 0.0,
      ),
      body: SafeArea(
        child: BgImageWidget(
          child: isLoading ? Center(
            child: CircularProgressIndicator(
              color: AppStyle.blue,
            ),
          ) : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                StringsManager.generateId,
                style: AppStyle.generalTextStyle(
                  fontSize: AppFontSize.s18,
                  fontWeight: AppFontWeight.bold,
                ),
              ),
              SizedBox(
                height: Utils.getWidth(context) / 2,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: Utils.getWidth(context) / 10,
                ),
                child: ElevatedButton(
                  onPressed: () {
                    generateId();
                  },
                  child: Center(
                    child: Text(
                      StringsManager.clickMe,
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
                height: Utils.getWidth(context) / 10,
              ),
              Container(
                width: Utils.getWidth(context),
                padding: EdgeInsets.symmetric(
                  horizontal: Utils.getWidth(context) / 10,
                  vertical: Utils.getWidth(context) / 50,
                ),
                margin: EdgeInsets.symmetric(
                  horizontal: Utils.getWidth(context) / 10,
                ),
                decoration: BoxDecoration(
                  color: AppStyle.white,
                  borderRadius: BorderRadius.circular(Utils.getWidth(context) / 10,),
                ),
                child: Center(
                  child: Text(
                    '$id',
                    style: AppStyle.generalTextStyle(
                      color: AppStyle.blackLight,
                      fontWeight: AppFontWeight.semiBold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
