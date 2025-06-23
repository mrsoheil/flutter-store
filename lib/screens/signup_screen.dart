import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class signiup_screen extends StatelessWidget {
  const signiup_screen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
      child: Scaffold(
        
        backgroundColor: Color(0xffF5F6FF),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
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
                      decoration: inputDecorationFunc("Username"),
                    textInputAction: TextInputAction.next,
                  ),
                  TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: inputDecorationFunc("Email"),
                    textInputAction: TextInputAction.next,
                  ),

                  TextField(
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      decoration: inputDecorationFunc("Phone Number"),
                    textInputAction: TextInputAction.next,
                  ),
                  TextField(
                      keyboardType: TextInputType.visiblePassword,
                      textInputAction: TextInputAction.next,
                      obscureText: true,
                      decoration: inputDecorationFunc("Password")),

                  TextField(
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      decoration: inputDecorationFunc("Confirm password"),
                    textInputAction: TextInputAction.done,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(

                        backgroundColor: Color(0xFF2D96FF),
                        foregroundColor: Color(0xFFFCFAFD),
                        fixedSize: Size(double.maxFinite, 45),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7.5))),
                    onPressed: () {},
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
                ]),
          ),
        ),
      ),
    );
  }
  InputDecoration inputDecorationFunc(String hintText){
    return InputDecoration(
    filled: true,
    fillColor: Colors.white,
    hintText: hintText,
    hintStyle: TextStyle(color: Color(0xFF505050)),
    border: OutlineInputBorder(
    borderSide: const BorderSide(color: Colors.grey),
    borderRadius: BorderRadius.circular(10)),
    focusedBorder: OutlineInputBorder(
    borderSide:
    BorderSide(color: Color(0xFF2D96FF), width: 2),
    borderRadius: BorderRadius.circular(15))
    );
  }
}
