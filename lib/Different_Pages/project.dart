import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:portfolio/main.dart';
import 'package:url_launcher/url_launcher.dart';

class Project extends StatefulWidget {
  const Project({super.key});

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {

  @override
  Widget build(BuildContext context) {
    return Column(
      // height: MediaQuery.of(context).size.height,
      // width: MediaQuery.of(context).size.width,
      // color: Colors.purple,
      children: [
        Container(
          alignment: Alignment.center,
          child: const Text("Projects",style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w700,
          ),
          ),
        ),
       Wrap(
        spacing: 10.0,
        runSpacing: 10.0,
        children: [

          // CHATTING APP LINK
          Container(
            decoration: BoxDecoration(
              color: Colors.white30,
              borderRadius: BorderRadius.circular(28.0),
            ),
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Project Title:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Chatting App with Flutter and Firebase',
                  style: TextStyle(fontSize: 16, color: Colors.blue[900], fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Key Features:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  '- User authentication using email and password',
                  style: TextStyle(fontSize: 16),
                ),
                const Text(
                  '- Real-time messaging functionality',
                  style: TextStyle(fontSize: 16),
                ),
                const Text(
                  '- Account management (create, delete, logout)',
                  style: TextStyle(fontSize: 16),
                ),
                const Text(
                  '- Customization options (font size, message colors)',
                  style: TextStyle(fontSize: 16),
                ),
                // Add more key features as a list
                const SizedBox(height: 20),
                const Text(
                  'My Role:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'Full-stack development, UI/UX design, Firebase integration.',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 20),

                const Text(
                  'Technologies Used:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  '- Flutter for front-end',
                  style: TextStyle(fontSize: 16),
                ),
                const Text(
                  '- Firebase for back-end (Realtime Database or Firestore)',
                  style: TextStyle(fontSize: 16),
                ),
                // Add more technologies as a list
                const SizedBox(height: 20),

                const Text(
                  'Challenges & Solutions:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'Real-time message sending and receiving implementation.',
                  style: TextStyle(fontSize: 16),
                ),
                const Text(
                  'Handling user authentication securely.',
                  style: TextStyle(fontSize: 16),
                ),
                // Add more challenges and solutions
                const SizedBox(height: 20),

                const Text(
                  'Impact/Results:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'Facilitated seamless communication between users.',
                  style: TextStyle(fontSize: 16),
                ),
                // Add more impact/results information
                const SizedBox(height: 20),

                const Text(
                  'Screenshots/Demo:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                TextButton(
                  onPressed: () async {
                    var url = Uri.parse(chatAppScreenshot);
                    if (await canLaunchUrl(url)) {
                      await launchUrl(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: const Text("link", style: TextStyle(color: Colors.blue)),
                ),

                // You can add images, screenshots, or a demo link here
                const SizedBox(height: 5),
                const Text(
                  'Link/Repository:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                TextButton(
                  onPressed: () async {
                    var url = Uri.parse(chatAppLink);
                    if (await canLaunchUrl(url)) {
                      await launchUrl(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: const Text("link", style: TextStyle(color: Colors.blue)),
                ),
              ],
            ),
          ),



       // PORTFOLIO WEBSITE
          Container(
            decoration: BoxDecoration(
              color: Colors.white10,
              borderRadius: BorderRadius.circular(28.0),
            ),
            padding: const EdgeInsets.all(20),
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               const Text(
                  'Project Title:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Portfolio Website',
                  style: TextStyle(fontSize: 16,color: Colors.blue[900],fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Key Features:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
               const  Text(
                  '- Showcase skills and projects',
                  style: TextStyle(fontSize: 16),
                ),
                const  Text(
                  '- Flutter and Firebase integration',
                  style: TextStyle(fontSize: 16),
                ),
                // Add more key features as a list
                const SizedBox(height: 20),
                const Text(
                  'My Role:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const  Text(
                  'Full-stack development, design, Firebase integration.',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 20),

                const Text(
                  'Technologies Used:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  '- Flutter for front-end',
                  style: TextStyle(fontSize: 16),
                ),
                const Text(
                  '- Firebase for back-end and hosting',
                  style: TextStyle(fontSize: 16),
                ),
                // Add more technologies as a list
                const SizedBox(height: 20),

                const Text(
                  'Challenges & Solutions:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const   Text(
                  'Optimized UI responsiveness for various screen sizes.',
                  style: TextStyle(fontSize: 16),
                ),
                // Add more challenges and solutions
                const  SizedBox(height: 20),

                const Text(
                  'Impact/Results:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const  Text(
                  'Displayed skills effectively and attracted internship opportunities.',
                  style: TextStyle(fontSize: 16),
                ),
                // Add more impact/results information
                const SizedBox(height: 20),

                const  Text(
                  'Screenshots/Demo:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                TextButton(
                  onPressed: () async {
                    var url=Uri.parse(portfolioScreenshot);
                    if (await canLaunchUrl(url)) {
                      await launchUrl(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: const Text("link",style: TextStyle(color: Colors.blue),),
                ),

                // You can add images, screenshots, or a demo link here
                const SizedBox(height: 5),
                const  Text(
                  'Link/Repository:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                TextButton(
                  onPressed: () async {
                    var url=Uri.parse(portfolioLink);
                    if (await canLaunchUrl(url)) {
                      await launchUrl(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: const Text("link",style: TextStyle(color: Colors.blue),),
                ),
              ],
            ),
          ),



          // GALLERY APP LINK
          Container(
            decoration: BoxDecoration(
              color: Colors.white30,
              borderRadius: BorderRadius.circular(28.0),
            ),
            padding: const EdgeInsets.all(20),
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               const Text(
                  'Project Title:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'Photo Gallery App',
                  style: TextStyle(fontSize: 16,color: Colors.red,fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                const  Text(
                  'Key Features:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  '- Account creation and authentication',
                  style: TextStyle(fontSize: 16),
                ),
                const Text(
                  '- Photo uploading and management',
                  style: TextStyle(fontSize: 16),
                ),
                // Add more key features as a list
                const SizedBox(height: 20),

                const Text(
                  'My Role:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const  Text(
                  'Full-stack development, app design, user authentication setup.',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 20),

                const Text(
                  'Technologies Used:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  '- Flutter for front-end development',
                  style: TextStyle(fontSize: 16),
                ),
                const Text(
                  '- Firebase for back-end and authentication',
                  style: TextStyle(fontSize: 16),
                ),
                // Add more technologies as a list
                const SizedBox(height: 20),
                const  Text(
                  'Challenges & Solutions:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'Addressed photo upload latency by optimizing data transfer methods.',
                  style: TextStyle(fontSize: 16),
                ),
                // Add more challenges and solutions
                const SizedBox(height: 20),
                const Text(
                  'Impact/Results:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'Streamlined photo sharing and enhanced user engagement.',
                  style: TextStyle(fontSize: 16),
                ),
                // Add more impact/results information
                const SizedBox(height: 20),
                const Text(
                  'Screenshots/Demo:',
                   style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                TextButton(
                  onPressed: () async {
                    var url=Uri.parse(galleryAppScreenshot);
                    if (await canLaunchUrl(url)) {
                      await launchUrl(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: const Text("link",style: TextStyle(color: Colors.blue),),
                ),

                // You can add images, screenshots, or a demo link here
                 const SizedBox(height: 5),
                 const Text(
                  'Link/Repository:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                TextButton(
                    onPressed: () async {
                      var url=Uri.parse(galleryAppLink);
                      if (await canLaunchUrl(url)) {
                      await launchUrl(url);
                      } else {
                      throw 'Could not launch $url';
                      }
                 },
                  child: const Text("link",style: TextStyle(color: Colors.blue),),
                ),
              ],
            ),
          ),
        ],
       ),
      ],
    );
  }
}
