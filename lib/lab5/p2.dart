import 'package:flutter/material.dart';

class p2 extends StatefulWidget {
  const p2({super.key});

  @override
  State<p2> createState() => _p2State();
}

class _p2State extends State<p2> {
final _formkey = GlobalKey<FormState>();
TextEditingController _email = TextEditingController();
TextEditingController _pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login form"),
      backgroundColor: Colors.grey),
      body: Form(
        key: _formkey,
        child: Column(
          children: [
            Text("Email Addresh"),
            TextFormField(
              controller: _email,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Email",
                hintText: "Enter Email"
              ),
              validator: (value){
                if(value==null || value.isEmpty){
                  return "please enter email";
                }
                final emailPattern=RegExp(r'^[\w.-]+@[\w]+\.+[\w]{2,4}$');
                if(!emailPattern.hasMatch(value!)){
                  return "please enter valid email";
                }
                return null;
              },
            ),
            Text("Password"),
            TextFormField(
              controller: _pass,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Password",
                  hintText: "Enter Password"
              ),
              validator: (value){
                if(value==null || value.isEmpty){
                  return "please enter password";
                }
                final passwordPattern=RegExp(r'^[\w.]+$');
                if(!passwordPattern.hasMatch(value!)){
                  return "please enter valid password";
                }

                if(value.length<7){
                  return "password must be at lease 8 letter";
                }
                return null;
              },
            ),
            ElevatedButton(onPressed: (){
              if(_formkey.currentState!.validate()){
                ScaffoldMessenger.of(context).showSnackBar(
                     SnackBar(content: Text("Successfully login"))
                );
              }
            }, child: Text("Login"))


          ],
        ),
      ),

    );
  }
}
