import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ProjectState();
}

class _ProjectState extends State<Contact> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController=TextEditingController();
  final TextEditingController _emailController=TextEditingController();
  final TextEditingController _subjectController=TextEditingController();
  final TextEditingController _messageController=TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    _nameController.dispose();
    _emailController.dispose();
    _subjectController.dispose();
    _messageController.dispose();
    super.dispose();
  }
  void clearController(){
    _nameController.clear();
    _emailController.clear();
    _subjectController.clear();
    _messageController.clear();

  }
 void sendMessage(String name,String email,String subject,String message) async{
    try{
      await FirebaseFirestore.instance.collection("UsersMessage").doc(email).set({
        "name":name,
        "email":email,
        "subject":subject,
        "message":message,
      }).then((value) => clearController()).then((value) =>  const ScaffoldMessenger(child: Text("Message send successfully")));
    }catch(e){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.toString())));
    }
 }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.cyan,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Const.sizeVer(20),
            const Text("Contact Me",
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),
            ),
            Text("Questions, Thoughts, Or Just Want To Say Hello?",
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.grey[700]),
            ),
            Container(
              alignment: Alignment.center,
              // color: Colors.white,
              width: MediaQuery.of(context).size.width>700?MediaQuery.of(context).size.width*0.40:MediaQuery.of(context).size.width*0.9,
              // height: MediaQuery.of(context).size.height*0.7,
              child:  Padding(
                padding: const EdgeInsets.all(20.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _nameController,
                       cursorColor:Colors.pinkAccent,
                       decoration: const InputDecoration(
                      labelText: "Enter your name",
                      labelStyle: TextStyle(fontSize: 20,color: Colors.pink),
                      fillColor: Colors.white,
                         hoverColor: Colors.grey,
                         filled:true,
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                    ),
                   validator: (values){
                     if(values.toString().isEmpty) {
                       return "Please Enter your name";
                     }
                     return null;
                   },
                  ),
                      Const.sizeVer(20),
                       TextFormField(
                         controller: _emailController,
                        cursorColor:Colors.pinkAccent,
                        decoration:  const InputDecoration(
                          labelText: "Enter your email",
                          labelStyle: TextStyle(fontSize: 20,color: Colors.pink),
                          fillColor: Colors.white,
                          hoverColor: Colors.grey,
                          filled:true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide(width: 1),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                        ),
                         validator: (values){
                           if(values.toString().isEmpty) {
                             return "Please Enter email";
                           }
                           return null;
                         },
                      ),
                      Const.sizeVer(20),
                      TextFormField(
                        controller: _subjectController,
                        cursorColor:Colors.pinkAccent,
                        decoration:  const InputDecoration(
                          labelText: "Enter your subject",
                          labelStyle: TextStyle(fontSize: 20,color: Colors.pink),
                          fillColor: Colors.white,
                          hoverColor: Colors.grey,
                          filled:true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide(width: 1),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                        ),
                      validator: (values){
                        if(values.toString().isEmpty) {
                          return "Please Enter some subject";
                        }
                        return null;
                      },

                      ),

                      Const.sizeVer(20),
                      Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.8), // Shadow color
                              spreadRadius: 5, // Spread radius
                              blurRadius: 9, // Blur radius
                              offset: const Offset(0, 3), // Offset
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10), // Match your TextField border radius
                        ),
                        child:  TextFormField(
                          controller: _messageController,
                          maxLines: 5,
                          cursorColor: Colors.pinkAccent,
                          decoration: const InputDecoration(
                            // alignLabelWithHint: ,
                            labelText: "Enter your message",
                            labelStyle: TextStyle(fontSize: 20, color: Colors.pink,),
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              // borderSide: BorderSide(width: 1),
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            ),
                          ),
                          validator: (values){
                              if(values.toString().isEmpty) {
                                  return "Please Enter some message";
                              }
                              return null;
                          },

                        ),
                      ),
                       Const.sizeVer(20),
                      MaterialButton(
                          color: Colors.deepOrange[400],
                          // minWidth: 200,
                          height: 60,
                          hoverColor: Colors.yellow,
                          onPressed: (){
                            if(_formKey.currentState!.validate()){
                                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("processing")));
                                // clearController();
                               sendMessage(_nameController.text.toString(), _emailController.text.toString(), _subjectController.text.toString(), _messageController.text.toString());
                              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Message sent successfully")));
                            }
                          },
                        child: Row(
                          children: [
                            const Text("Send Message",
                              style: TextStyle(
                                fontSize: 20,
                              ),),
                            Const.sizeHor(10,),
                            const Icon(Icons.send),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

              ),
            ),

          ],
        ),
      ),
    );
  }
}
