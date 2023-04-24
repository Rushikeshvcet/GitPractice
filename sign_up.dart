import 'package:flutter/material.dart';
import 'package:foodorderingapp/screen/welcome_page.dart';

class sign_up extends StatelessWidget {
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
          Text("signUP",
            style: TextStyle(color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold),),

          Column(
            children: [
              textField(
                  hinText: "Full Name"
              ),
              textField(
                  hinText: "Email_ID"
              ),
              textField(
                  hinText: "Password"
              ),
            ],
          ),
          Row(
            children: [
              const SizedBox(height: 10,),
              ElevatedButton(onPressed: () {}, child: Text("SignUp"))

            ],
          )


        ],

      ),
    );
  }
}
