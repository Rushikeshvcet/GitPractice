

import 'package:flutter/material.dart';
import 'package:foodorderingapp/screen/welcome_page.dart';

class login_page extends StatelessWidget {
  

  Widget textField({required String hinText}) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hinText,
        hintStyle: TextStyle(color: Colors.white),
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey)
        ),
      ),
    );
  }

  Widget button({
    required String name,
    required Color color,
    required Color textColor
  }) {
    return Container(
      height: 45,
      width: 300,
      child: RaisedButton(
        color: color,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.green, width: 2),
          borderRadius: BorderRadius.circular(30),
        ),
        onPressed: () {

        },
        child: Text(
          name,
          style: TextStyle(color: textColor),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) => WelcomePage()));
            }),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Login",
            style: TextStyle(color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold),),

          Column(
            children: [
              textField(
                  hinText: "Username"
              ),
              textField(
                  hinText: "Password"
              ),

            ],
          ),
          Row(
            children: [
              const SizedBox(height: 10,),
              ElevatedButton(onPressed: () {}, child: Text("Login"))

            ],
          )


        ],

      ),
    );
  }

  RaisedButton(
      {required Color color, required RoundedRectangleBorder shape, required Null Function() onPressed, required Text child}) {}

}



