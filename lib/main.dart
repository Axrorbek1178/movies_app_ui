import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movies_app_ui/Pages/MoviePage.dart';

import 'Pages/CategoryPage.dart';
import 'Pages/HomePage.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {@override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    theme: ThemeData(
      scaffoldBackgroundColor: Color(0xFF0F111D),
    ),
    routes: {
      "/": (context) => HomePage(),
      "categoryPage": (context) => CategoryPage(),
      "moviePage": (context) => MoviePage(),
    },
    );
  }
}
