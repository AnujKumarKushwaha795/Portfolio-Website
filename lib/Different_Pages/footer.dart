import 'package:flutter/material.dart';
import 'package:portfolio/Different_Pages/social_row.dart';

import '../constants.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.white,
      child: Column(
        children: [
          const SocialLinks(),
          Const.sizeVer(8),
          const Text("FlutterDeveloper"),
        ],
      ),
    );
  }
}
