import 'package:flutter/cupertino.dart';
import 'package:personal_gallery/util/constants.dart';
import 'package:shimmer/shimmer.dart';

class WelcomeHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: textBlack,
      highlightColor: highlightColor,
      child:  Text(
        'WELCOME TO GAllERY',
        style: TextStyle(
          fontSize: 40.0,
          fontWeight: FontWeight.bold,
         fontFamily: "DancingScript"
        ),
      ),
    );
  }}