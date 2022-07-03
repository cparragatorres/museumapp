
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:museumapp/pages/init_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Museum App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.dmSansTextTheme(),
      ),
      home: InitPage(),
    );
  }
}
