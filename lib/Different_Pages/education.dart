import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:timeline_tile/timeline_tile.dart';

import '../main.dart';

class Education extends StatefulWidget {
  const Education({super.key});

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20.0),
      width: context.screenWidth<900?context.screenWidth*0.9:context.screenWidth*0.5,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
      ),
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           const Text("Education",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w600,
            ),
          ),

        TimelineTile(
         alignment: TimelineAlign.center,
         endChild:  Container(
           decoration: BoxDecoration(
             color: Colors.blue[200],
             borderRadius: BorderRadius.circular(10),
           ),
           padding: const EdgeInsets.all(12),
           child:  Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   const Text(
                     "Certifications or Additional Education:",
                     style: TextStyle(
                       fontSize: 16,
                       fontWeight: FontWeight.bold,
                     ),
                   ),
                   const SizedBox(height: 4),
                  const  Text(
                     "NPTEL Course:",
                     style: TextStyle(
                       fontSize: 14,
                       fontWeight: FontWeight.w600,
                     ),
                   ),
                   const SizedBox(height: 4,),
                   const Text(
                     "Joy of Computing Using Python\nIssuing Body: NPTEL (National Programme on Technology Enhanced Learning)\nDescription: Python and its Library.\n[Jul-Oct 2023(12 week course)]\nCertificate Link:",
                     style: TextStyle(
                       fontSize: 14,
                       fontWeight: FontWeight.w400,
                     ),
                   ),

                   TextButton(
                     onPressed: () async {
                       var url=Uri.parse(nptelLink);
                       if (await canLaunchUrl(url)) {
                         await launchUrl(url);
                       } else {
                         throw 'Could not launch $url';
                       }
                     },
                     // child: const Text("link",style: TextStyle(color: Colors.blue),),
                     child: const Icon(Icons.link,color: Colors.blue,),
                   ),

                 ],
               ),
           ),

         startChild:
         Container(
           decoration: BoxDecoration(
             color: Colors.blue[200],
             borderRadius: BorderRadius.circular(10),
           ),
           padding: const EdgeInsets.all(12),
           child: const Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Text(
                 "National Institute of Technology Patna (NIT Patna)",
                 style: TextStyle(
                   fontSize: 24,
                   fontWeight: FontWeight.bold,
                   color: Colors.black,
                 ),
               ),
               SizedBox(height: 8),
               Text(
                 "Bachelor of Technology in Computer Science and Engineering [2021-2025]",
                 style: TextStyle(
                   fontSize: 16,
                   fontWeight: FontWeight.bold,
                 ),
               ),
               // SizedBox(height: 16),

             ],
           ),
         ),
       ),

          Const.sizeVer(6),
          TimelineTile(
            alignment: TimelineAlign.center,
            endChild:  Container(
              decoration: BoxDecoration(
                  color: Colors.greenAccent[100],
                  borderRadius: BorderRadius.circular(10)
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "High School(10th):",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "With 84.5% mark from S.M.T.I.G.I.C College Pryayagraj Utter Pradesh (2017)",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            startChild: Container(
              decoration: BoxDecoration(
                  color: Colors.blue[200],
                  borderRadius: BorderRadius.circular(10)
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // SizedBox(height: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Coursework:",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "Object-Oriented Programming (OOPs)\nDatabase Management Systems (DBMS)\nData Structures and Algorithms (DSA)\nLanguages: C++, Python, SQL",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Const.sizeVer(6),
          TimelineTile(
            alignment: TimelineAlign.center,
            endChild:  Container(
              decoration: BoxDecoration(
                  color: Colors.lightGreenAccent[100],
                  borderRadius: BorderRadius.circular(10)
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Intermediate(12th):",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "With 80.5% mark from S.R.A.P.I.C College Pryayagraj Utter Pradesh (2019)",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],

                ),
              ),
            ),
            startChild: Container(
              decoration: BoxDecoration(
                  color: Colors.blue[200],
                  borderRadius: BorderRadius.circular(10)
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Extracurricular Involvement:",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "Google Developer Student Club (GDSC) - Flutter, NIT Patna\nRole: Developer",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    // SizedBox(height: 16),

                  ],
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}


