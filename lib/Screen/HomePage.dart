import 'package:flutter/material.dart';


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
            Image.asset('assets/rose1.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
            ),
            Padding(
              padding: EdgeInsets.only(top: 180, left: 50, right: 50),
              child: Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Bên Nhau',
                    style: TextStyle(fontSize: 22),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: 80,
                      height:80,
                      decoration: BoxDecoration(
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text('Ngày', style: TextStyle(fontSize: 22),
                    ),
                  ],
                ),

              ),
            )
          ],
        ),
      ),
    );
  }
}
