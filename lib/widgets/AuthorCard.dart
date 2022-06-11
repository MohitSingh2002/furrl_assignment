import 'package:flutter/material.dart';
import 'package:furrl_assignment/utils/AppManager.dart';
import 'package:furrl_assignment/utils/AppStyle.dart';
import 'package:furrl_assignment/utils/Utils.dart';

class AuthorCard extends StatelessWidget {

  String author, downloadUrl;

  AuthorCard({required this.author, required this.downloadUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Utils.getWidth(context),
      height: Utils.getWidth(context) / 1.2,
      padding: EdgeInsets.symmetric(
        vertical: Utils.getWidth(context) / 20,
        horizontal: Utils.getWidth(context) / 20,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(downloadUrl),
          fit: BoxFit.fill,
        ),
      ),
      child: Align(
        alignment: Alignment.bottomRight,
        child: Container(
          color: AppStyle.grey,
          padding: EdgeInsets.all(Utils.getWidth(context) / 100,),
          child: Text(
            '$author',
            style: AppStyle.generalTextStyle(
              fontSize: AppFontSize.s12,
            ),
          ),
        ),
      ),
    );
  }
}
