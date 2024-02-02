import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String buttonName = 'Click Me';
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('App title'),
        ),
        body: Center(
            child: currentIndex == 0
                ? Container(
                    width: double.infinity,
                    height: double.infinity,
                    color: Colors.grey.shade100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.orange,
                          ),
                          onPressed: () {
                            setState(() {
                              buttonName = 'Clicked';
                            });
                          },
                          child: Text(buttonName),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              buttonName = 'Clicked';
                            });
                          },
                          child: Text(buttonName),
                        ),
                      ],
                    ),
                  )
                : Image.asset('assets/images/house.webp')
            //  Container(
            //     width: double.infinity,
            //     height: double.infinity,
            //     color: Colors.lightBlue[200],
            //     child: const Row(
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         children: [Text('This is the setting screen')]),
            //   ),
            ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings'),
          ],
          currentIndex: currentIndex,
          onTap: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
