import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Transparent Login app',
        home: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: SizedBox(
              child: Stack(
                children: [
                  Positioned(
                    child: Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                          color: Color(0xff4599ff),
                          borderRadius: BorderRadius.all(Radius.circular(150))),
                    ),
                  ),
                  Positioned(
                    child: Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                          color: Color(0xffcc33ff),
                          borderRadius: BorderRadius.all(Radius.circular(150))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 50,
                          ),
                          _logo(),
                          const SizedBox(
                            height: 50,
                          ),
                          _loginLabel(), const SizedBox(
                            height: 50,
                          ),
                          _labelTextInput("Email", "yourname@example.com", false), const SizedBox(
                            height: 50,
                          ),
                          _labelTextInput("Password", "Yourpassword", true),
                          const SizedBox(
                            height: 50,
                          ),
                          _loginBtn(),
                          const SizedBox(
                            height: 50,
                          ),
                          _signUpLabel()
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

Widget _signUpLabel(){
  return Text("Don't have an account Yet ?");
}


Widget _loginBtn() {
  return Container(
    width: double.infinity,
    height: 60,
    decoration: BoxDecoration(
      color: Colors.blue,
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    child: TextButton(
      onPressed: ()=>{},
      child: Text("Login",style: GoogleFonts.josefinSans(
        textStyle: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w800,
          fontSize: 24,
        )
      ),),
    ),
  );
}

Widget _labelTextInput(String label, String hintText, bool Ispass) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: GoogleFonts.josefinSans(
            textStyle: TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.w600,
          fontSize: 20,
        )),
      ),
      TextField(
        obscureText: Ispass,
        cursorColor: Colors.red,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: GoogleFonts.josefinSans(
            textStyle: TextStyle(
              color: Color(0xffc5d2e1),
              fontWeight: FontWeight.w400,
              fontSize: 20,
            ),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xffdfe8f3))
          ),
        ),
      )
    ],
  );
}

Widget _loginLabel() {
  return Center(
    child: Text(
      "Login",
      style: GoogleFonts.josefinSans(
          textStyle: TextStyle(
        color: Color(0xff164276),
        fontWeight: FontWeight.w900,
        fontSize: 34,
      )),
    ),
  );
}

Widget _logo() {
  return Center(
    child: SizedBox(
      child: Image.network("https://uilogos.co/img/logomark/kyan.png"),
      height: 80,
      width: 80,
    ),
  );
}
