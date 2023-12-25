import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

import '../constants.dart';

class AnimatedContact extends StatefulWidget {
  final IconData iconData;
  final String title;
  final String subtitle;
  final VoidCallback onTap;
  final Color colors;
  final String urlOfLink;
  // final Uri urlOfLink;
  // final UriData urlOfLink;
  const AnimatedContact({
    super.key,
    required this.iconData,
    required this.title,
    required this.subtitle,
    required this.onTap,
    required this.colors,
    required this.urlOfLink,
  });

  @override
  State<AnimatedContact> createState() => _AnimatedContactState();
}

class _AnimatedContactState extends State<AnimatedContact> {
  bool isHovering=false;

  // String get urlOfLinks => urlOfLink;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () async {
          var url = widget.urlOfLink;
          if (await canLaunch(url)) {
            await launch(url);
          } else {
            throw 'Could not launch $url';
          }
        },
      onHover: (val){
        setState(() {
          isHovering=val;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: isHovering?Colors.grey.shade300:Colors.white,
            border: Border.all(color: isHovering?Colors.grey.shade500:Colors.white,),
        ),
        child: Row(
          children: [
             Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: FaIcon(
                    // FontAwesomeIcons.linkedin,
                    widget.iconData,
                    size: 20,
                    color: widget.colors,
                    // color: Colors.colors,
                ),
              ),
            ),
            Const.sizeHor(12),
             Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.title,textAlign: TextAlign.start,
                style: const TextStyle(fontWeight: FontWeight.w500,fontSize: 16),
                ),
                Text(widget.subtitle),
                // Expanded(
                //   child: Text(
                //     widget.subtitle,
                //     // style: TextStyle(
                //     //   color:
                //     //   hoveringCodeCef ? Colors.blue : Colors.white,
                //     // ),
                //     overflow: TextOverflow.ellipsis,
                //     maxLines:1, // Adjust the number of lines to display
                //   ),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
