import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shop_bd/screen/form.dart';
// import 'package:shop_bd/image_picker/set_photo_screen.dart';
// import 'package:shop_bd/screen/home.dart';
import 'package:shop_bd/screen/homepage.dart';
import 'package:shop_bd/screen/login_page.dart';
import 'package:shop_bd/screen/searchBar.dart';
import 'package:shop_bd/screen/search_bar_raw.dart';
import 'package:shop_bd/utls/const.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: kMainColor, statusBarBrightness: Brightness.light));
    return MaterialApp(
      // themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(backgroundColor: kMainColor)),
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        // primarySwatch: Colors.blue,
        dataTableTheme:
            DataTableThemeData(dataTextStyle: TextStyle(color: kMainColor)),
        appBarTheme: AppBarTheme(
            backgroundColor: kMainColor,
            systemOverlayStyle:
                SystemUiOverlayStyle(statusBarBrightness: Brightness.light)),
      ),
      // highContrastTheme: ThemeData.dark(),

      // darkTheme: ThemeData.dark(useMaterial3: true),

      home: SearchBarRaw(),
    );
  }
}
