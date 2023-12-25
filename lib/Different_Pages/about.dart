import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/Different_Pages/animated_contact.dart';
import 'package:portfolio/Different_Pages/social_row.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';
import '../constants.dart';
/*
Using Keyboard Shortcuts:
Windows/Linux:
Reformat Code: Ctrl + Alt + L
Optimize Imports: Ctrl + Alt + O
 */

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  bool hoveringGfg = false;
  bool hoveringCodeCef = false;
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20.0),
      width: context.screenWidth < 900
          ? context.screenWidth * 0.9
          : context.screenWidth * 0.3,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
      ),
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              // color: Colors.orange[100],
              // image: DecorationImage()
              // border: Border(bottom:BorderSide(color: Colors.blue,),top: BorderSide.none,left: BorderSide.none,right: BorderSide.none),
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15)),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.orange[50]!, // Lighter color at the top
                  Colors.orange[300]!, // Darker color at the bottom
                ],
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  // Shadow color and opacity
                  spreadRadius: 5,
                  // Spread radius
                  blurRadius: 7,
                  // Blur radius
                  offset: const Offset(0, 3), // Shadow position, top left
                ),
              ],
              border: Border.all(
                color: Colors.orange[700]!, // Border color
                width: 2, // Border width
              ),
              image: const DecorationImage(
                image: AssetImage('back_img1.jpg'),
                // Replace 'your_image.png' with the image path
                fit: BoxFit.cover,
                // Adjusts how the image fits within the container
                opacity: 0.0,
                filterQuality: FilterQuality.low,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/Anuj.jpg",
                    height: 156.0,
                  ),
                  const Text(
                    "Anuj Kumar",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "A third-year Computer Science student at NIT Patna. Passionate about technology, I've explored various fields including Flutter, Firebase, and data structures in C++ and Python.",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.yellow.shade500,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Const.sizeVer(10),
          Wrap(
            spacing: 8.0,
            runSpacing: 8.0,
            children: [

              /*
              const Chip(
                label: Text("OOPs"),
                labelStyle: TextStyle(color: Colors.white),
                backgroundColor: Colors.green,
                avatar: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text("O",
                      style: TextStyle(color: Colors.green),
                      textAlign: TextAlign.center),
                ),
                // materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                // labelPadding: EdgeInsets.symmetric(horizontal: 8),
                // visualDensity: VisualDensity(horizontal: -4, vertical: -4),
              ),
              */


              // OOPs
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircleAvatar(
                      radius:12,
                      backgroundColor: Colors.white,
                      child: Text(
                        "O",
                        style: TextStyle(
                          color: Colors.green,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "OOPs",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),

             // C++
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircleAvatar(
                      radius:12,
                      backgroundColor: Colors.white,
                      child: Text(
                        "C",
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "C++",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircleAvatar(
                      radius:12,
                      backgroundColor: Colors.white,
                      child: Text(
                        "P",
                        style: TextStyle(
                          color: Colors.red,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Python",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),


// Adjust the weightage by modifying the properties or the appearance of the Chips

              GestureDetector(
                onTap: () async {
                  var url =
                  Uri.parse("https://auth.geeksforgeeks.org/user/ak3177590/");
                  if (await canLaunchUrl(url)) {
                    await launchUrl(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                child: MouseRegion(
                  onEnter: (_) {
                    setState(() {
                      hoveringGfg = true;
                    });
                  },
                  onExit: (_) {
                    setState(() {
                      hoveringGfg = false;
                    });
                  },
                  child: Container(
                    padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                    decoration: BoxDecoration(
                      color: hoveringGfg ? Colors.grey : Colors.green,
                      borderRadius: BorderRadius.circular(
                          20), // Adjust the radius as needed
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Flexible(
                          child: Text(
                            "Solved over 400 coding problems on GFG",
                            style: TextStyle(
                              color:
                              hoveringGfg ? Colors.blue : Colors.white,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines:
                            1, // Adjust the number of lines to display
                          ),
                        ),
                        const SizedBox(width: 5),
                        // Adjust spacing between text and icon if needed
                        Icon(
                          Icons.link,
                          color: hoveringGfg ? Colors.blue : Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ),

             GestureDetector(
                onTap: () async {
                  var url=Uri.parse("https://www.codechef.com/users/ak3177590");
                  if (await canLaunchUrl(url)) {
                    await launchUrl(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                child: MouseRegion(
                  onEnter: (_) {
                    setState(() {
                      hoveringCodeCef = true;
                    });
                  },
                  onExit: (_) {
                    setState(() {
                      hoveringCodeCef = false;
                    });
                  },
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                    decoration: BoxDecoration(
                      color: hoveringCodeCef ? Colors.grey : Colors.green,
                      borderRadius: BorderRadius.circular(
                          20), // Adjust the radius as needed
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Flexible(
                          child: Text(
                            "Two Star⭐⭐Coder on Codecef (link)",
                            style: TextStyle(
                              color:
                                  hoveringCodeCef ? Colors.blue : Colors.white,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines:
                                1, // Adjust the number of lines to display
                          ),
                        ),
                        const SizedBox(width: 5),
                        // Adjust spacing between text and icon if needed
                        Icon(
                          Icons.link,
                          color: hoveringCodeCef ? Colors.blue : Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Divider(),
          AnimatedContact(
              iconData: FontAwesomeIcons.github,
              title: "Github",
              subtitle: "",
              colors: Colors.black,
              urlOfLink: "https://github.com/AnujKumarKushwah",
              onTap: () {}
          ),
          AnimatedContact(
              iconData: FontAwesomeIcons.linkedin,
              title: "LinkedIn",
              subtitle: "",
              colors: Colors.lightBlue,
              urlOfLink:
                  "https://www.linkedin.com/in/anuj-kumar-kushwaha-602569228/",
              onTap: () {
                // var url = Uri.parse("https://www.geeksforgeeks.org/");
                // if (await canLaunchUrl(url)) {
                // await launchUrl(url);
                // } else {
                // throw 'Could not launch $url';
                // }
              }),
          AnimatedContact(
              iconData: Icons.email,
              title: "Email",
              subtitle: "ak3177590@gmail.com",
              colors: Colors.red,
              urlOfLink: "ak3177590@gmail.com",
              onTap: () {}),
          Const.sizeVer(10),
          const SocialLinks(),
        ],
      ),
    );
  }
}
