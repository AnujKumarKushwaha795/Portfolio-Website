import 'package:firebase_storage/firebase_storage.dart';

import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Different_Pages/portfolio.dart';
import 'firebase_options.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_auth/firebase_auth.dart';
late final String nptelLink;
late final String resumeLink;
late final String galleryAppLink;
late final String portfolioLink;
late final String chatAppLink;
late final String galleryAppScreenshot;
late final String portfolioScreenshot;
late final String chatAppScreenshot;
late final String backImage1;
late final String backImage2;

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  try{
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    // log("firebase initialized");
    // store();
  }
  catch(e){
    // log("error======$e");
  }
  getLinks();
  runApp(const MyApp());
}

void store()async{
  try{
    await FirebaseFirestore.instance.collection("Users").doc("user1").set({"name":'anuj'});
    log("Saved");
  }
  catch(e){
    log("Error in storing");
  }
}

void getLinks()async{
  try{
    DocumentSnapshot<Map<String, dynamic>> snapshot = await FirebaseFirestore.instance
        .collection("All_links")
        .doc("Rv3YFcSwO8HbTMkH7UwC")
        .get();
      Map<String, dynamic>?links=snapshot.data();

      if (snapshot.exists) {
        nptelLink=links!["nptelLink"];
        resumeLink=links!['resumeLink'];
        galleryAppLink=links!['galleryAppLink'];
        portfolioLink=links!['portfolioLink'];
        chatAppLink=links!['chatAppLink'];
        galleryAppScreenshot=links!['galleryAppScreenshot'];
        portfolioScreenshot=links!['portfolioScreenshot'];
        chatAppScreenshot=links!['chatAppScreenshot'];

        // backImage1=links!['back_img1'];
        // backImage2=links!['back_img2'];
        // log(backImage1);
        // log(backImage2);
        // log("$nptelLink $resumeLink $galleryAppLink $portfolioLink $chatAppLink");
        // log("$galleryAppScreenshot $portfolioScreenshot $chatAppScreenshot");
     }
      else {
      // log('No such document!');
     }
  }
  catch(e){
    // log("Error in fetching link=$e");
    // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.toString())));
  }
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
        // canvasColor: Colors.purple.shade50,
        useMaterial3: true,
      ),
      // color: Colors.red,
      home: const Portfolio(),
    );
  }
}


Future<List<String>> getAllImageUrls() async {
  try {
    final ListResult result = await FirebaseStorage.instance.ref().child('image').listAll();
    log(result.toString());
    List<String> imageUrls = [];

    // Loop through all items (files) in the 'images' folder
    for (final Reference ref in result.items) {
      // Get the download URL for each image file
      String downloadUrl = await ref.getDownloadURL();
      imageUrls.add(downloadUrl);
      log(downloadUrl);
    }

    return imageUrls; // Return a list of download URLs for all images
  } catch (e) {
    // Handle any potential exceptions here
    print('Error getting image URLs: $e');
    return [];
  }
}


/*
--web-renderer html
Showing image on web
 */
/*
Using Keyboard Shortcuts:
Windows/Linux:
Reformat Code: Ctrl + Alt + L
Optimize Imports: Ctrl + Alt + O
 */

/*
HOSTING WEBSITE
flutter login
flutter build web
firebase init hosting
firebase deploy
firebase hosting:channel:deploy "CHANNEL_ID"
*/
