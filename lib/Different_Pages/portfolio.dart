import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:portfolio/Different_Pages/about2.dart';
import 'package:portfolio/Different_Pages/contact.dart';
import 'package:portfolio/Different_Pages/education.dart';
import 'package:portfolio/Different_Pages/footer.dart';
import 'package:portfolio/Different_Pages/project.dart';
import 'package:portfolio/Different_Pages/skills.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants.dart';
import '../main.dart';
import 'about.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  bool isMobile=false;
  List<Widget>naveItem=[];
  final skillKey=GlobalKey();
  final projectKey=GlobalKey();
  final educationKey=GlobalKey();
  final contactMeKye=GlobalKey();
  // final String resumeLink="link";
  @override
  void initState(){
    naveItem=[
      Const.sizeVer(10),Const.sizeHor(10),
      ElevatedButton(onPressed: ()async{
        var url=Uri.parse(resumeLink);
        if(await canLaunchUrl(url)){
          await launchUrl(url);
        }
      },
      child: const Text("Resume")),
      Const.sizeVer(10),Const.sizeHor(10),
      ElevatedButton(onPressed: (){
        Scrollable.ensureVisible(educationKey.currentContext!);
      }, child: const Text("Education")),

      Const.sizeVer(10),Const.sizeHor(10),
      ElevatedButton(
          onPressed: (){
            try{
              Scrollable.ensureVisible(skillKey.currentContext!);
            }catch(e){
              // log("Error=$e");
            }
          },
          child: const Text("Skills")
      ),
      Const.sizeVer(10),Const.sizeHor(10),
      ElevatedButton(
          onPressed: (){
            try{
              Scrollable.ensureVisible(projectKey.currentContext!);
            }catch(e){
              // log("Error=$e");
            }
          },
          child: const Text("Project")
      ),
      Const.sizeVer(10),Const.sizeHor(10),
      ElevatedButton(
          onPressed: (){
            try{
              Scrollable.ensureVisible(contactMeKye.currentContext!);
            }catch(e){
              // log("Error=$e");
            }
          },
          child: const Text("Contact Me")
      ),
      Const.sizeHor(10),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    isMobile=MediaQuery.of(context).size.width>700?false:true;
    return Scaffold(
      backgroundColor: Colors.red.shade100,
      appBar: AppBar(
        title: const Text("Flutter Developer"),
        actions: isMobile?null:naveItem,            //A list of Widgets to display in a row after the title widget.Typically these widgets are IconButtons representing common operations. For less common operations, consider using a PopupMenuButton as the last action.
      ),
      drawer: isMobile?Drawer(
        child: ListView(
          children: naveItem,
        ),
      ):null,

     body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('back_imp2.jpg'),
                  fit: BoxFit.cover
                ),
              ),
              child: Column(
                children: [
                   Wrap(
                    alignment: WrapAlignment.center,
                    spacing: 20.0,
                    children: [
                      const About(),
                      // AboutSection(),
                      Education(key: educationKey,)
                    ],
                  ),
                  Const.sizeVer(40),
                  Skills(key: skillKey,),
                  Const.sizeVer(5),
                  const Divider(),

                  Project(key:projectKey,),
                  Const.sizeVer(5),
                  Contact(key: contactMeKye,),
                  Const.sizeVer(5),
                  const Footer(),
                ],
              ),
            ),
          ),
     ),
    );
  }
}
