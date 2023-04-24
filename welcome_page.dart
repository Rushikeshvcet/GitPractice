import 'package:flutter/material.dart';
import 'package:foodorderingapp/screen/login_page.dart';
import 'package:foodorderingapp/screen/sign_up.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: Center(
                child: Image.asset('images/logo.jpg'),
              ),
            ),

          ),
          Expanded(
            child: Container(

              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Khana Lelo",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                  Column(
                    children: [
                      Text("Order food form our restaurant and"),
                      Text("Make reservation in real- time")
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      OutlinedButton(onPressed: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context) => login_page()));
                      }, child: Text("Login")),
                      ElevatedButton(onPressed: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context) => sign_up()));
                      }, child: Text("SignUP"))
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}