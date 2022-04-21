import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                'Sign Up',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
              // to make space between elements
              SizedBox(
                height: 50,
              ),
              TextFormField(
                decoration: InputDecoration(
                    // hintText: "Enter your mail",
                    // Or
                    labelText: "Enter your mail",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    labelStyle: new TextStyle(color: Colors.blue),
                    prefixIcon: Icon(Icons.email)),
                //define the characters in the field or the type of field
                keyboardType: TextInputType.emailAddress,
                onChanged: (String value) {},
              ),

              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "Enter your Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    suffixIcon: Icon(Icons.remove_red_eye_outlined)),
                keyboardType: TextInputType.visiblePassword,
                onChanged: (String value) {},
                //make the password secured
                obscureText: true,
              ),

              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "Re-enter your Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    suffixIcon: Icon(Icons.remove_red_eye_outlined)),
                keyboardType: TextInputType.visiblePassword,
                onChanged: (String value) {},
                //make the password secured
                obscureText: true,
              ),

              Center(
                child: Padding(
                  padding: EdgeInsets.all(50.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 50, vertical: 10),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    )));
  }
}
