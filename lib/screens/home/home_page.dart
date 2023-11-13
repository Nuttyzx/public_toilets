// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

/*-------
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:public_toilets/model/toilet.dart';
import 'package:public_toilets/repositories/toilet_repository.dart';
import 'package:public_toilets/screens/home/toilet_list_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _toiletNameController = TextEditingController();
  final _toiletPointController = TextEditingController();
  final _toiletDistanceController = TextEditingController();


  @override
  void initState() /*async*/{ //เพื่อทำการแปลง json ให้อยู่ในรูปเป็น model toilet
    // TODO: implement initState
    super.initState();
    // มี2 วิธีคือใช้ then หรือ await
    //readJsonData จะ return Future ของ <String> เป้น Asyschonouse
    var data = /*await*/ ToiletRepository.readJsonData('assets/data/toilets.json'); // เอา await มารอ โดยเอา async กำกับ และตัวแปร data จะกลายเป็น string ที่มาจาก json
    //var i = 456;
    data.then (getResult); //then คือการรอผลลัพท์จากตัวแปร data ,  data ตือ บัครคิว , resuit  คือผลลัทพ์ที่ได้เหมือน data ที่ใช้ await
      // result..... รอจนได้resultแล้วเอา result ไปใช้งานอะไร
      // result จะกลายเป็น string ที่ได้จาก toliet.json
      //var j =123;

    //var i = 456; //ถ้าใช้ then จะทำ บรรทัด i ก่อน j แต่ถ้าใช้ await จะรอได้ผลลัพท์ x ก่อน ถึงจะทำบรรทัด i
  }


  getResult(String result){//ส่งฟังก์ชั่นไปทั้งก้อน ไม่ได้ส่งค่าพารามิเตอร์ไป ก้อจะได้ตัวผลลัทพ์คือ String result เปนString ที่ได้จากไฟล์ toilet.json
    debugPrint(result); //
    List list = jsonDecode(result); //เอาString json array ทั้งก้อรจาก json มาแปลงเปน list array ของ dart
    /*list.forEach((element){
      var rating = element['rating']; // เสี่ยงจะผิด key map ผิด จึงต้องแก้ไข ทำ list.map => Toilet
      debugPrint(rating.toString());
    });*/
    //var name = list[0]['name'];
    //debugPrint(name);

    /*List<Toilet> toiletList = list.map((item) {
      return Toilet.fromJson(item);
    }).toList();*/
    List<Toilet> toiletList =
    list.map((item) => Toilet.fromJson(item)).toList();//ทำ mao ให้แปลงเป็น model toilet*/
    // map คือ จับคู่ item คือ object map ไปเป็น object toilet(item)

/*----------
    setState(() { //เมื่อมีการอัปเดข แก้ไขข้อมูลให้ setstate ด้วย เพราะตอนแรกจะเป้น array ว่าง
      ToiletRepository.toilets = toiletList;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Public Toilets'),
      ),
      body: Column(
        children: [
          Expanded(  //เป็น wiget ที่ futter สร้างให้เพื่อแสดงผลที่เป้นรายการ เปน list
            child: ListView.builder( // แสดงผล toilet
              itemCount: ToiletRepository.toilets!.length,//ให้รู้ว่ามีข้อมูลเท่าไหร่
              itemBuilder: (ctx, i) { //ให้ ListView คอลกลับมา และ return อะไรกลับไป
                Toilet toilet = ToiletRepository.toilets![i]; // listView คอลกลับมาตามความยาว itemcount

                return ToiletListItem( //กำหนดออกแบบหน้าตาใน list ออกมาแบบไหน ,ดึงข้อมูลต่างๆใน toilet มาแสดง
                  toilet: toilet,
                );
              },
            ),
          ),
          Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextField(
                  controller: _toiletNameController,
                  decoration: InputDecoration(
                    hintText: 'ชื่อห้องน้ำ',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 3,
                        color: Colors.greenAccent,
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _toiletPointController,
                        decoration: InputDecoration(
                          hintText: 'ให้คะแนน',
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 3,
                              color: Colors.greenAccent,
                            ), //<-- SEE HERE
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        controller: _toiletDistanceController,
                        decoration: InputDecoration(
                          hintText: 'ระยะทาง',
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 3,
                              color: Colors.greenAccent,
                            ), //<-- SEE HERE
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      var toiletName = _toiletNameController.text;
                      var toiletPoint = double.parse(_toiletPointController.text);
                      var toiletDistance = double.parse(_toiletDistanceController.text);

                      var toilet = Toilet(
                        name: toiletName,
                        point: toiletPoint, // todo: homework
                        distance: toiletDistance, // todo: homework
                      );

                      setState(() {
                        ToiletRepository.toilets.add(toilet);
                      });

                      _toiletNameController.clear();
                    },
                    child: Text('ADD'),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}*/

import 'package:flutter/material.dart';
import 'package:public_toilets/model/toilet.dart';
import 'package:public_toilets/repositories/toilet_repository.dart';
import 'package:public_toilets/screens/home/add_toilets.dart';
import 'package:public_toilets/screens/home/toilet_list_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Toilet>? _toilets; //  _toilets เป้น null ก่อน
  var _isLoading = false;
  String? _errorMessage;

  @override
  //  initState() โค้้ดในการ load ข้อมูล
  void initState() { //  initState() ห้ามใช้  async
    super.initState();
    getToilets();
  }


  getToilets() async { //ทำหน้าที่จะ call ต่อไปที่ getToilets() ที่อยู่ใน ToiletRepository()
    setState(() {// method setSate คือ การสั่งให้ทำ method build อีกครั้งนึง
      _isLoading = true; // เกิด icon หมุนๆ // เก็บสถานะของการ load มีการ load จะเกิด icon หมุนๆ
      _errorMessage = null; // เก็บข้อความที่เป็น error
    });

    await Future.delayed(Duration(seconds: 2)); // ทำ delay เพื่อให้เห็น icon หมุนๆ

    try {
      var toilets = await ToiletRepository().getToilets(); // call ไปที่ getToilets() ที่อยู่ใน ToiletRepository() จะได้เป็น list ของ model toilet
      // toilets[0].reviews[0].rating วิธีเรียก list toilet
      debugPrint('Number of toilets: ${toilets.length}'); // จำนวนห้องน้ำทั้งหมดเท่าไหร่

      setState(() {
        _toilets = toilets;
      });
    } catch (e) {
      setState(() {
        _errorMessage = e.toString(); // ข้อความ error
      });
    } finally { // จะทำทั้งกรณีที่ทั้งสำเร็จและ error
      setState(() {
        _isLoading = false; //จะต้องปิด loading เสมอ
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    buildLoadingOverlay() {
      return Container( // fuction แสดง icon หมุนๆ
          color: Colors.black.withOpacity(0.2),
          child: Center(child: CircularProgressIndicator()));
    }
    buildError() => Center( // เกิด error
        child: Padding(
            padding: const EdgeInsets.all(40.0),
            child:
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(_errorMessage ?? '', textAlign: TextAlign.center),
              SizedBox(height: 32.0),
              ElevatedButton(onPressed: getToilets, child: Text('Retry'))
            ])));

    buildList() => ListView.builder(
        itemCount: _toilets!.length,
        itemBuilder: (ctx, i) {
          Toilet toilet = _toilets![i];
          return ToiletListItem(toilet: toilet);
        });

    handleClickAdd() {
      Navigator.pushNamed(context, AddToiletPage.routeName).whenComplete(() {
        getToilets(); // เมื่อกลับมาหน้าหลักให้ getToilets() อัปเดตทั้งหมดใหม่
      });
    }

    return Scaffold(
        appBar: AppBar(
          title: Text('Public Toilets'),
        ),

        floatingActionButton: FloatingActionButton( // กดปุ่มเปลี่ยนหน้า
            onPressed: handleClickAdd, child: Icon(Icons.add)),
        body: Stack(
          children: [

            if (_toilets?.isNotEmpty ?? false) buildList(), // ไม่เกิด error และ toilet มีข้อมูล , _toilets? จะต้องไม่ null buildList() จะถูกเรียก
            if (_errorMessage != null) buildError(), //ถ้าเจอ list ว่าง
            if (_isLoading) buildLoadingOverlay() // _isLoading เป็น true buildLoadingOverlay() จะถูกเรียกใช้งาน
          ],
        ));
  }
}


