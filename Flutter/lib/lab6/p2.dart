import 'package:flutter/material.dart';

class p2 extends StatefulWidget {
  const p2({super.key});

  @override
  State<p2> createState() => _p2State();
}

class _p2State extends State<p2> {
  final _formKey = GlobalKey<FormState>();

  String gender = "Male";

  bool cricket = false;
  bool music = false;
  bool reading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration Form"),
      ),

      body: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [

              Text("Name"),
              SizedBox(height: 5),

              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Enter Name",
                ),
              ),

              SizedBox(height: 10),

              Text("Email"),
              SizedBox(height: 5),

              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Enter Email",
                ),
              ),

              SizedBox(height: 10),

              Text("Gender"),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Radio(
                    value: "Male",
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value!;
                      });
                    },
                  ),
                  Text("Male"),

                  Radio(
                    value: "Female",
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value!;
                      });
                    },
                  ),
                  Text("Female"),
                ],
              ),

              Text("Hobbies"),

              CheckboxListTile(
                title: Text("Cricket"),
                value: cricket,
                onChanged: (value) {
                  setState(() {
                    cricket = value!;
                  });
                },
              ),

              CheckboxListTile(
                title: Text("Music"),
                value: music,
                onChanged: (value) {
                  setState(() {
                    music = value!;
                  });
                },
              ),

              CheckboxListTile(
                title: Text("Reading"),
                value: reading,
                onChanged: (value) {
                  setState(() {
                    reading = value!;
                  });
                },
              ),

              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Form Submitted")),
                  );
                },
                child: Text("Submit"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}