import "package:flutter/material.dart";
import "package:ps_store/views/home_page.dart";
import "package:flutter/services.dart";
import "package:flutter_neumorphic/flutter_neumorphic.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    //
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    //   statusBarColor: Colors.transparent,
    //   statusBarBrightness: Brightness.dark,
    //   statusBarIconBrightness: Brightness.dark,
    //   systemNavigationBarIconBrightness: Brightness.light,
    // ));
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarIconBrightness: Brightness.light,
      // systemNavigationBarColor: Colors.green,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "PS5",
      theme: ThemeData(
        splashColor: Colors.transparent,
        hoverColor: Colors.transparent,
        hintColor: Colors.transparent,
        focusColor: Colors.transparent,
        // canvasColor: Color(0xFF212735),
        // cardColor: Color(0xFF212735),
        // backgroundColor: Color(0xFF212735),
        // buttonColor: Color(0xFF212735),
        brightness: Brightness.dark,
        // primarySwatch: Colors.blue,
        fontFamily: "Lato",
      ),
      home: HomePage(),
    );
  }
}
