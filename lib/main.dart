import 'package:flutter/material.dart';
import 'package:public_toilets/screens/home/add_toilets.dart';
import 'package:public_toilets/screens/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home: const HomePage(),

      initialRoute: '/',
      routes: { //เส้นทาง เปลี่ยนหน้า
        '/': (context) => HomePage(), //กลับมาหน้าหลัก
        AddToiletPage.routeName: (context) => AddToiletPage(),  //ให้ไปที่หน้า AddToiletPage //add_toilet คือ ชื่อเส้นทาง เช่น กดปุ่ม บวก
        //AddToiletPage.routeName คือ add_toilet
      },
    );
  }
}
