import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import '../constants.dart';

class SocialLinks extends StatelessWidget {
  const SocialLinks({super.key});
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        InkWell(
            child:  const FaIcon(FontAwesomeIcons.facebook,color: Colors.blue,),
            onTap: ()async{
              var url = Uri.parse("https://www.facebook.com/anuj.kushwaha.10888");
              if (await canLaunchUrl(url)) {
              await launchUrl(url);
              } else {
              throw 'Could not launch $url';
              }
          },
        ),
        Const.sizeHor(20),
        InkWell(
          child:  const FaIcon(FontAwesomeIcons.instagram,color: Colors.pinkAccent,),
          onTap: ()async{
            var url = Uri.parse("https://www.instagram.com/an_uj5018/");
            if (await canLaunchUrl(url)) {
              await launchUrl(url);
            } else {
              throw 'Could not launch $url';
            }
          },
        ),
        Const.sizeHor(20),
        InkWell(
          child: const FaIcon(FontAwesomeIcons.twitter,color: Colors.blue,),
          onTap: ()async{
            var url = Uri.parse("https://twitter.com/AnujKum08922331");
            if (await canLaunchUrl(url)) {
              await launchUrl(url);
            } else {
              throw 'Could not launch $url';
            }
          },
        ),
      ],
    );
  }
}
