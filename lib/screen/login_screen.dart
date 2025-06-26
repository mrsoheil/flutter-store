import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled1/screen/begin_screen.dart';

import 'package:untitled1/screen/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isShow = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF5F6FF),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Login screen",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Welcome back my store",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
              TextField(
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Phone",
                    hintStyle: TextStyle(color: Color(0xFF505050)),
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFF2D96FF), width: 2),
                        borderRadius: BorderRadius.circular(15)),
                  )),
              TextField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: isShow,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          if (isShow) {
                            isShow = false;
                            icon:
                            Icon(Icons.visibility);
                          } else {
                            isShow = true;
                            icon:
                            Icon(Icons.visibility_off);
                          }
                        });
                      },
                      icon: isShow
                          ? Icon(Icons.visibility)
                          : Icon(Icons.visibility_off),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Password",
                    hintStyle: TextStyle(color: Color(0xFF505050)),
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFF2D96FF), width: 2),
                        borderRadius: BorderRadius.circular(15)),
                  )),
              TextButton(
                  onPressed: () {

                  },
                  child: Text('Forget password')),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF2D96FF),
                    foregroundColor: Color(0xFFFCFAFD),
                    fixedSize: Size(double.maxFinite, 45),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7.5))),
                onPressed: () {


                  // Never come back to last page //
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (context) => BeginScreen(),
                    ),
                        (route) => false,
                  );


                },
                child: Text("Login"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have you account? "),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => signiup_screen(),
                            ));
                      },
                      child: Text('Create new account')),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
