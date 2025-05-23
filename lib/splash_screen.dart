import 'package:flutter/material.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: Container(

        width: double.infinity,

        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomCenter,
          colors: [Colors.teal, Colors.teal.shade300],
        )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Image.asset("assets/images/logo.png"),
            SizedBox(height: 20.0),
            Text(
              "Dr Meisam Akhlaghdoost",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold),
            ),
            Text("Life is beauty",
                style: TextStyle(color: Colors.white, fontSize: 22)),
          ],
        ),
      ),

    );
  }
}
