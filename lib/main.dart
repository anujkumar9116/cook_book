import 'package:cook_book/30_days_with_flutter/day_list.dart';
import 'package:cook_book/get_x_library/get_x_snackbar.dart';
import 'package:cook_book/get_x_library/get_x_tutorial_list.dart';
import 'package:cook_book/pages/animate_container.dart';
import 'package:cook_book/pages/drawer_day_nine.dart';
import 'package:cook_book/pages/home_page.dart';
import 'package:cook_book/pages/location_container.dart';
import 'package:cook_book/utils/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home:HomePage(),
      initialRoute: Routes.homePage,
      routes: {
        Routes.AnimatedContainer:(context)=>AnimateContainer(),
        Routes.LocationContainer:(context)=>LocationContainer(),
        Routes.Day30Flutter:(context)=>DayList(),
        Routes.DrawerLayout:(context)=>DrawerDayNine(),
        Routes.GetXLibrary:(context)=>GetXTutorial(),
        Routes.GetxSnackbar:(context)=>GetXSnackbarList(),
      },
    );
  }
}
