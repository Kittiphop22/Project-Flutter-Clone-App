import 'package:animate_do/animate_do.dart';
import 'package:day20_3_2/ViewSocks.dart';
import 'package:day20_3_2/ViewSocks2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            FadeInUp(
                duration: Duration(milliseconds: 1000),
                child: Container(
                  height: 220,
                  width: double.infinity,
                  padding: EdgeInsets.only(left: 25, right: 25, top: 60),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(50.0),
                        bottomLeft: Radius.circular(50.0)),
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        colors: [
                          Color.fromRGBO(0, 0, 0, 1),
                          Color.fromRGBO(31, 31, 31, 1)
                        ]),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                            flex: 6,
                            child: FadeInUp(
                              duration: Duration(milliseconds: 1200),
                              child: Text('ร้านขายถุงเท้าออนไลน์ที่ดีที่สุด',
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromRGBO(255, 255, 255, 1))),
                            ),
                          ),                         
                        ],
                      )
                    ],
                  ),
                )),
            Transform.translate(
              offset: Offset(0, -35),
              child: FadeInUp(
                  duration: Duration(milliseconds: 1200),
                  child: Container(
                    height: 60,
                    padding: EdgeInsets.only(left: 20, top: 8),
                    margin: EdgeInsets.symmetric(horizontal: 25),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade300,
                              blurRadius: 20.0,
                              offset: Offset(0, 10.0))
                        ],
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.white),
                    child: TextField(
                      decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.search,
                            color: Colors.black,
                            size: 20.0,
                          ),
                          border: InputBorder.none,
                          hintText: 'ค้นหาที่นี่'),
                    ),
                  )),
            ),
            Padding(
              padding: EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      FadeInUp(
                        duration: Duration(milliseconds: 1200),
                        child: Text('สินค้าที่มี',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                                color: Color.fromRGBO(0, 0, 0, 1))),
                      ),
                      Container(
                        child: Row(
                          children: <Widget>[
                            FadeInUp(
                                duration: Duration(milliseconds: 1200),
                                child: MaterialButton(
                                  elevation: 0,
                                  highlightElevation: 0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                  padding: EdgeInsets.all(10),
                                  onPressed: () {},
                                  color: Color.fromRGBO(0, 0, 0, 0.094),
                                  child: Text('ผู้ใหญ่',
                                      style: TextStyle(
                                          color: Color.fromRGBO(253, 3, 3, 1),
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold)),
                                )),
                            SizedBox(
                              width: 20.0,
                            ),
                            FadeInUp(
                                duration: Duration(milliseconds: 1300),
                                child: MaterialButton(
                                  elevation: 0,
                                  highlightElevation: 0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                  padding: EdgeInsets.all(10),
                                  onPressed: () {},
                                  color: Color.fromRGBO(255, 255, 255, 0.098),
                                  child: Text('เด็ก',
                                      style: TextStyle(
                                          color: Color.fromRGBO(5, 5, 5, 0.6),
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold)),
                                )),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
              height: 280,
              width: double.infinity,
              child: ListView(
                padding: EdgeInsets.only(bottom: 20, left: 20),
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  FadeInUp(
                      duration: Duration(milliseconds: 1300),
                      child:GestureDetector(
                        onTap: () {
                          Navigator.push(
                                context,
                                PageTransition(
                                    type: PageTransitionType.fade,
                                    child: ViewSocks_2()));
                        },
                      child: makeCard(
                          context: context,
                          startColor: Color.fromRGBO(251, 53, 105, 1),
                          endColor: Color.fromRGBO(255, 254, 254, 1),
                          image: 'assets/images/sock-five.png'))),
                  FadeInUp(
                      duration: Duration(milliseconds: 1400),
                      child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                PageTransition(
                                    type: PageTransitionType.fade,
                                    child: ViewSocks()));
                          },
                          child: makeCard(
                              context: context,
                              startColor: Color.fromRGBO(125, 227, 235, 1),
                              endColor: Color.fromRGBO(23, 100, 105, 1),
                              image: 'assets/images/socks_three.png'))),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget makeCard({context, startColor, endColor, image}) {
    return GestureDetector(
      //onTap: () {},
      child: AspectRatio(
        aspectRatio: 4 / 5,
        child: Container(
          margin: EdgeInsets.only(right: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13.0),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                colors: [startColor, endColor],
              ),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 10,
                    offset: Offset(5, 10))
              ]),
          child: Padding(
            padding: EdgeInsets.all(50),
            child: Center(
              child: Image.asset(image),
            ),
          ),
        ),
      ),
    );
  }
}
