import 'package:flutter/material.dart';
import 'package:instagram/components/feed_tile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          flexibleSpace: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5, right: 10, left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'lib/assets/images/insta logo.png',
                        height: 35,
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            style: ButtonStyle().copyWith(
                              shadowColor: WidgetStateProperty.all(
                                Colors.transparent,
                              ),
                              overlayColor: WidgetStateProperty.all(
                                Colors.transparent,
                              ),
                            ),
                            icon: Icon(Icons.favorite_border, size: 35),
                          ),
                          Container(
                            height: 32,
                            width: 32,
                            margin: EdgeInsets.only(left: 10),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/messages');
                              },
                              style:
                                  ElevatedButton.styleFrom(
                                    backgroundColor: Colors.transparent,
                                    elevation: 0,
                                    padding: EdgeInsets.zero,
                                  ).copyWith(
                                    overlayColor: WidgetStateProperty.all(
                                      Colors.transparent,
                                    ),
                                    shadowColor: WidgetStateProperty.all(
                                      Colors.transparent,
                                    ),
                                  ),
                              child: Image.asset(
                                'lib/assets/images/msg.webp',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: FeedTile(),
    );
  }
}
