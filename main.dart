import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:instagram/components/myprofile.dart';
import 'package:instagram/pages/home.dart';
import 'package:instagram/pages/messages.dart';
import 'package:instagram/pages/profile.dart';
import 'package:instagram/pages/search.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/main': (context) => MyApp(),
        '/profile': (context) => Profile(),
        '/home': (context) => Home(),
        '/messages': (context) => Messages(),
        '/search' : (context) => Search(),
      },
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: IndexedStack(index: currentIndex, children: [Home(), Profile(), Search()]),

        bottomNavigationBar: BottomAppBar(
          height: 60,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 32,
                width: 32,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      currentIndex = 0;
                    });
                  },
                  style:
                      ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        padding: EdgeInsets.zero,
                        shape: CircleBorder(),
                      ).copyWith(
                        overlayColor: WidgetStateProperty.all(
                          Colors.transparent,
                        ),
                        shadowColor: WidgetStateProperty.all(
                          Colors.transparent,
                        ),
                      ),
                  child: Image.asset(
                    currentIndex == 0
                        ? 'lib/assets/images/homed.jpg'
                        : 'lib/assets/images/home.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              SizedBox(
                height: 30,
                width: 30,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      currentIndex = 2;
                    });
                  },
                  style:
                      ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        padding: EdgeInsets.only(top: 1),
                        shape: CircleBorder(),
                      ).copyWith(
                        overlayColor: WidgetStateProperty.all(
                          Colors.transparent,
                        ),
                        shadowColor: WidgetStateProperty.all(
                          Colors.transparent,
                        ),
                      ),
                  child: Icon(currentIndex == 2 ? Symbols.search_sharp : Icons.search,fill: 1,weight: 700, color: Colors.black, size: 30,)
                ),
              ),

              Container(
                height: 27,
                width: 27,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 3),
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: EdgeInsets.zero,
                child: Transform.translate(
                  offset: Offset(-2, -2),
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    style: ButtonStyle().copyWith(
                      shadowColor: WidgetStateProperty.all(Colors.transparent),
                      overlayColor: WidgetStateProperty.all(Colors.transparent),
                    ),
                    icon: Icon(Icons.add, color: Colors.black, size: 25),
                    onPressed: () {},
                  ),
                ),
              ),

              SizedBox(
                height: 27,
                width: 27,
                child: ElevatedButton(
                  onPressed: () {},
                  style:
                      ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        padding: EdgeInsets.zero,
                        shape: CircleBorder(),
                      ).copyWith(
                        overlayColor: WidgetStateProperty.all(
                          Colors.transparent,
                        ),
                        shadowColor: WidgetStateProperty.all(
                          Colors.transparent,
                        ),
                      ),
                  child: Image.asset(
                    'lib/assets/images/reels.webp',
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              Container(
                height: 31,
                width: 31,
                decoration: BoxDecoration(
                  border: currentIndex == 1 ? Border.all() : null,
                  borderRadius: BorderRadius.circular(100),
                ),
                padding: currentIndex == 1
                    ? EdgeInsets.all(2)
                    : EdgeInsets.zero,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      currentIndex = 1;
                    });
                  },
                  style:
                      ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        padding: EdgeInsets.zero,
                        shape: CircleBorder(),
                      ).copyWith(
                        overlayColor: WidgetStateProperty.all(
                          Colors.transparent,
                        ),
                        shadowColor: WidgetStateProperty.all(
                          Colors.transparent,
                        ),
                      ),
                  child: ClipOval(
                    child: Image.asset(
                      myprofile[0],
                      fit: BoxFit.cover,
                      height: 31,
                      width: 31,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
