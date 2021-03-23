import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        body: Container(
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    height: 200,
                    child: Image.network(
                        "https://i.postimg.cc/br70sf45/medium-1.png"),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Material(
                    elevation: 40,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      height: 280,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: SingleChildScrollView(
                        clipBehavior: Clip.none,
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              color: Colors.greenAccent,
                              width: double.infinity,
                              child: Center(
                                child: Text(
                                  "LOGIN",
                                  style: GoogleFonts.raleway(
                                      color: Colors.lightBlueAccent,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            input("Username", false),
                            input("Password", true),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Forgot Password?",
                              style: GoogleFonts.raleway(
                                  color: Colors.grey,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 18,
                            ),
                            Container(
                              height: 65,
                              width: 65,
                              decoration: BoxDecoration(
                                color: Colors.greenAccent,
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.arrow_forward_ios_sharp,
                                  color: Colors.white,
                                  size: 35,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 70,
                            ),
                            Text(
                              "Don't have an account?",
                              style: GoogleFonts.raleway(
                                  color: Colors.white,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "Create One Now",
                              style: GoogleFonts.raleway(
                                  color: Colors.greenAccent,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget input(String label, bool pass) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 6),
    child: Container(
      child: TextFormField(
        decoration: InputDecoration(
            fillColor: Colors.white,
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.greenAccent, width: 2.0)),
            suffixIcon: pass
                ? Icon(
                    Icons.lock_outline_rounded,
                    color: Colors.grey[400],
                  )
                : Icon(
                    Icons.person_outline,
                    color: Colors.grey[400],
                  ),
            labelText: label,
            labelStyle: GoogleFonts.raleway(
                color: Colors.grey, fontSize: 18, fontWeight: FontWeight.w400)),
      ),
    ),
  );
}
