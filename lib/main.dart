import 'package:book_grocer/common/color_extenstion.dart';
import 'package:book_grocer/view/login/sign_in_view.dart';
import 'package:book_grocer/view/login/sign_up_view.dart';
import 'package:book_grocer/view/main_tab/main_tab_view.dart';
import 'package:book_grocer/view/onboarding/welcome_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'admin_view/books.dart';
import 'firebase_options.dart';


Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp( const MyApp());

}

class MyApp extends StatelessWidget {

   const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: TColor.primary,
        fontFamily: 'SF Pro Text',
      ),
      home:   BooksPage(),
    );
  }
}

