import 'package:flutter/material.dart';
import 'package:furrl_assignment/utils/AssetsManager.dart';
import 'package:furrl_assignment/utils/Utils.dart';

class BgImageWidget extends StatelessWidget {

  Widget child;

  BgImageWidget({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Utils.getWidth(context),
      height: Utils.getHeight(context),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AssetsManager.bgImage,),
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}
