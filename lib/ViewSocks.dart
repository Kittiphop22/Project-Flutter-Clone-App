import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class ViewSocks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: mediaQuery.size.height / 3,
            child: FadeInUp(
              duration: Duration(milliseconds: 1200),
              child: Container(
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                  gradient: LinearGradient(begin: Alignment.topRight, colors: [
                    Color.fromRGBO(125, 227, 235, 1),
                    Color.fromRGBO(23, 100, 105, 1)
                  ]),
                ),
                child: Transform.translate(
                  offset: Offset(30, -30),
                  child: FadeInUp(
                    duration: Duration(milliseconds: 1300),
                    child: Image.asset(
                      'assets/images/socks_three.png',
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 50,
            left: 10,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              height: MediaQuery.of(context).size.height / 1.4,
              child: FadeInUp(
                  duration: Duration(milliseconds: 1200),
                  child: Container(
                      padding: const EdgeInsets.all(25.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                        ),
                      ),
                      child: SingleChildScrollView(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          FadeInUp(
                            duration: Duration(milliseconds: 1300),
                            child: Text(
                              'ถุงเท้าสั้น',
                              style: GoogleFonts.lato(
                                  color: Color.fromRGBO(97, 90, 90, .54),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          FadeInUp(
                            duration: Duration(milliseconds: 1300),
                            child: Text(
                              "EnET-Short Socks (Black)",
                              style: TextStyle(
                                  color: Color.fromRGBO(97, 90, 90, 1),
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          FadeInUp(
                            duration: Duration(milliseconds: 1400),
                            child: Text(
                              "ถุงเท้าสั้นสีดำ จำนวน 1 คู่ สวมใส่สบาย มีเทคโนโลยีนำเข้าความร้อน ระบายความเย็น ไม่เหมาะกับประเทศไทยเท่าไหร่ แต่ก็จะขาย",
                              style: GoogleFonts.lato(
                                color: Color.fromRGBO(51, 51, 51, 0.54),
                                height: 1.4,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: <Widget>[
                              FadeInUp(
                                  duration: Duration(milliseconds: 1200),
                                  child: Container(
                                    width: 40,
                                    height: 40,
                                    padding: EdgeInsets.all(2),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 3, color: Colors.red),
                                        shape: BoxShape.circle,
                                        color: Colors.white),
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.black),
                                    ),
                                  )),                             
                            ],
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          FadeInUp(
                            duration: Duration(milliseconds: 1200),
                            child: Text(
                              'เพิ่มเติม',
                              style: TextStyle(
                                  color: Color.fromRGBO(97, 90, 90, .54),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 80,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: <Widget>[
                                FadeInUp(
                                  duration: Duration(milliseconds: 1300),
                                  child: AspectRatio(
                                    aspectRatio: 3.2 / 1,
                                    child: Container(
                                      padding: EdgeInsets.all(13),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.grey.shade300),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15))),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Container(
                                            width: 56,
                                            padding: EdgeInsets.all(10),
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                color: Color.fromRGBO(0, 0, 0, 1)),
                                            child: Image.asset(
                                                'assets/images/socks-icon.png'),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              Text(
                                                'Size',
                                                style: GoogleFonts.lato(
                                                    color: Color.fromRGBO(
                                                        97, 90, 90, 1),
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(
                                                height: 2,
                                              ),
                                              Text(
                                                'XS,S,M,L,XL',
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        97, 90, 90, .7),
                                                    fontSize: 13),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          FadeInUp(
                              duration: Duration(milliseconds: 1500),
                              child: Container(
                                height: 60,
                                padding: EdgeInsets.symmetric(horizontal: 40),
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.shade300,
                                          blurRadius: 10,
                                          offset: Offset(0, 10))
                                    ],
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50)),
                                    gradient: LinearGradient(colors: [
                                      Color.fromRGBO(0, 0, 0, 1),
                                      Color.fromRGBO(110, 110, 110, 1)
                                    ])),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.baseline,
                                      textBaseline: TextBaseline.alphabetic,
                                      children: <Widget>[
                                        Text(
                                          '99 บาท',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'ซื้อ',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25),
                                    ),
                                  ],
                                ),
                              )),
                          SizedBox(
                            height: 50,
                          ),
                        ],
                      ))))),
        ],
      ),
    );
  }
}
