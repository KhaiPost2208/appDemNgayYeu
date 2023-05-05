import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // DateTime dateTime = DateTime(2025, 2, 1, 10, 20);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Image.asset(
              'assets/rose2.jpg',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 180, left: 50, right: 50),
                  child: Container(
                    width: 350,
                    height: 350,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.pinkAccent,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Bên Nhau',
                          style: GoogleFonts.allura(
                            textStyle: TextStyle(fontSize: 40),
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 10),




                        // ZoomTapAnimation(
                        //   onTap: () {
                        //     showCupertinoModalPopup(
                        //       context: context,
                        //       builder: (BuildContext context) => SizedBox(
                        //         height: 300,
                        //         child: CupertinoDatePicker(
                        //           backgroundColor: Colors.white,
                        //           initialDateTime: dateTime,
                        //           onDateTimeChanged: (DateTime newTime) {
                        //             setState(() => dateTime = newTime);
                        //           },
                        //           use24hFormat: true,
                        //           mode: CupertinoDatePickerMode.date,
                        //         ),
                        //       ),
                        //     );
                        //   },
                        //   child: Container(
                        //     width: 200,
                        //     height: 80,
                        //     decoration: BoxDecoration(),
                        //     child: Center(
                        //       child: Text(
                        //         '${dateTime.day}-${dateTime.month}-${dateTime.year}',
                        //         style: TextStyle(
                        //             fontSize: 40, color: Colors.white),
                        //       ),
                        //     ),
                        //     // child: Icon(
                        //     //   Icons.add,
                        //     //   size: 50,
                        //     //   color: Colors.white,
                        //     // ),
                        //   ),
                        // ),
                        SizedBox(height: 10),
                        Text(
                          'Ngày',
                          style: GoogleFonts.allura(
                            textStyle: TextStyle(fontSize: 40),
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 90),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Button(),
                          SizedBox(height: 14),
                          Text(
                            'Tôi',
                            style: GoogleFonts.alef(
                              textStyle:
                              TextStyle(fontSize: 20, color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 30),
                      Column(
                        children: [
                          Button(),
                          SizedBox(height: 14),
                          Text(
                            'Người Ấy',
                            style: GoogleFonts.alef(
                              textStyle:
                              TextStyle(fontSize: 20, color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget Button() {
    return ZoomTapAnimation(
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: Stack(
          children: [
            Center(
                child: Icon(
                  Icons.add_a_photo_outlined,
                  size: 40,
                )),
          ],
        ),
      ),
    );
  }
}
