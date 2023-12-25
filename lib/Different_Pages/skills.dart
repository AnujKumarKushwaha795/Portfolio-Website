import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 20.0,
      runSpacing: 20.0,
      alignment: WrapAlignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          child: const Text("My Skills",style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w700,
          ),),
        ),
       Wrap(
         spacing: 8.0,
         runSpacing: 8.0,
         children: [
           Container(
             width: context.screenWidth<900?context.screenWidth*0.9:(context.screenWidth*0.8)/3,
             decoration: BoxDecoration(
               color: Colors.white,
               borderRadius: BorderRadius.circular(28.0),
             ),
             padding: const EdgeInsets.all(20),
             child:  Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 const Text("Programming Language",
                   style: TextStyle(fontWeight: FontWeight.w600),
                 ),
                 const Divider(),
                 Wrap(
                   spacing: 8.0,
                   runSpacing: 8.0,
                   children: [
                     Chip(
                       label: const Text("C++",style: TextStyle(color: Colors.black),),
                       labelStyle: const TextStyle(color: Colors.indigo),
                       side: const BorderSide(
                           color: Colors.indigo
                       ),
                       backgroundColor: Colors.purple[200],
                     ),
                     Chip(
                       label: const Text("Python",style: TextStyle(color: Colors.black),),
                       labelStyle: const TextStyle(color: Colors.indigo),
                       side: const BorderSide(
                           color: Colors.indigo
                       ),
                       backgroundColor: Colors.pinkAccent[200],
                     ),
                   ],
                 ),
               ],
             ),
           ),        Container(
             width: context.screenWidth<900?context.screenWidth*0.9:(context.screenWidth*0.8)/3,
             decoration: BoxDecoration(
               color: Colors.white,
               borderRadius: BorderRadius.circular(28.0),
             ),
             padding: const EdgeInsets.all(20),
             child:  Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 const Text("Frameworks & Libraries",
                   style: TextStyle(fontWeight: FontWeight.w600),
                 ),
                 const Divider(),
                 Wrap(
                   spacing: 8.0,
                   runSpacing: 8.0,
                   children: [
                     Chip(
                       label: const Text("Flutter",style: TextStyle(color: Colors.black),),
                       labelStyle: const TextStyle(color: Colors.indigo),
                       side: const BorderSide(
                           color: Colors.indigo
                       ),
                       backgroundColor: Colors.purple[200],
                     ),
                     Chip(
                       label: const Text("NumPy",style: TextStyle(color: Colors.black),),
                       labelStyle: const TextStyle(color: Colors.indigo),
                       side: const BorderSide(
                           color: Colors.indigo
                       ),
                       backgroundColor: Colors.purple[200],
                     ),
                     Chip(
                       label: const Text("Pandas",style: TextStyle(color: Colors.black),),
                       labelStyle: const TextStyle(color: Colors.indigo),
                       side: const BorderSide(
                           color: Colors.indigo
                       ),
                       backgroundColor: Colors.purple[200],
                     ),
                   Chip(
                     label: const Text("Matplotlib",style: TextStyle(color: Colors.black),),
                     labelStyle: const TextStyle(color: Colors.indigo),
                     side: const BorderSide(
                         color: Colors.indigo
                     ),
                     backgroundColor: Colors.purple[200],
                   ),
                 ],
                 ),
               ],
             ),
           ),
           Container(
             width: context.screenWidth<900?context.screenWidth*0.9:(context.screenWidth*0.8)/3,
             decoration: BoxDecoration(
               color: Colors.white,
               borderRadius: BorderRadius.circular(28.0),
             ),
             padding: const EdgeInsets.all(20),
             child:  Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 const Text("Others",
                   style: TextStyle(fontWeight: FontWeight.w600),
                 ),
                 const Divider(),
                 Wrap(
                   spacing: 8.0,
                   runSpacing: 8.0,
                   children: [
                     Chip(
                       label: const Text("Data Structure & Algorithm",style: TextStyle(color: Colors.black),),
                       labelStyle: const TextStyle(color: Colors.indigo),
                       side: const BorderSide(
                           color: Colors.indigo
                       ),
                       backgroundColor: Colors.purple[200],
                     ),
                     Chip(
                       label: const Text("Database Management System",style: TextStyle(color: Colors.black),),
                       labelStyle: const TextStyle(color: Colors.indigo),
                       side: const BorderSide(
                           color: Colors.indigo
                       ),
                       backgroundColor: Colors.purple[200],
                     ),
                     Chip(
                       label: const Text("Computer Network",style: TextStyle(color: Colors.black),),
                       labelStyle: const TextStyle(color: Colors.indigo),
                       side: const BorderSide(
                           color: Colors.indigo
                       ),
                       backgroundColor: Colors.purple[200],
                     ),
                     Chip(
                       label: const Text("Operating System",style: TextStyle(color: Colors.black),),
                       labelStyle: const TextStyle(color: Colors.indigo),
                       side: const BorderSide(
                           color: Colors.indigo
                       ),
                       backgroundColor: Colors.purple[200],
                     ),
                   ],
                 ),

                 // Chip(label: Text("Others1"),
                 //   labelStyle: TextStyle(color: Colors.cyan),
                 //   side: BorderSide(
                 //       color: Colors.indigo
                 //   ),
                 //   backgroundColor: Colors.white,
                 // ),
                 // Chip(label: Text("Others2"),
                 //   labelStyle: TextStyle(color: Colors.cyan),
                 //   side: BorderSide(
                 //       color: Colors.indigo
                 //   ),
                 //   backgroundColor: Colors.white,
                 // ),
               ],
             ),
           ),
         ],
       ),

      ],
    );
  }
}
