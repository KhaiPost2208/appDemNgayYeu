import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
            Image.asset(
              'assets/traitimm.png',
              // fit: BoxFit.cover,
              width: double.infinity,
              // height: double.infinity,
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 180, left: 50, right: 50),
                  child: Container(
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Bên Nhau',
                          style: GoogleFonts.allura(
                            textStyle: TextStyle(fontSize: 34),
                          ),
                        ),
                        SizedBox(height: 10),
                        ZoomTapAnimation(
                          child: Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                            ),
                            child: Icon(Icons.add, size: 70,),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Ngày',
                          style: GoogleFonts.allura(
                            textStyle: TextStyle(fontSize: 34),
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
                              textStyle: TextStyle(fontSize: 20, color: Colors.black),
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
                              textStyle: TextStyle(fontSize: 20, color: Colors.black),
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
