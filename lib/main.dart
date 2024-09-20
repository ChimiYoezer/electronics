import 'package:electronics/pages/addtoCart.dart';
import 'package:electronics/pages/category.dart';
import 'package:electronics/pages/firstpage.dart';
import 'package:electronics/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  // Get.lazyPut<ManageState>(() => ManageState());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: "/home",
      getPages: [
        GetPage(name: "/opening", page: ()=>OpeningPage()),
        GetPage(name: "/home", page: ()=>HomePage()),
        GetPage(name: "/category", page: ()=>CategoryPage()),
        GetPage(name: "/cart", page: ()=>Addtocart()),
      ],
      // home: Practice(),
    );
  }
}
