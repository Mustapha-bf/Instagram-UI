import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram/components/accounts.dart';
import 'package:instagram/components/fyp_posts.dart';
import 'package:instagram/components/myprofile.dart';
import 'package:instagram/pages/account.dart';

class FeedTile extends StatefulWidget {
  const FeedTile({super.key});

  @override
  State<FeedTile> createState() => _FeedTileState();
}

class _FeedTileState extends State<FeedTile> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  // My Story
                  Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            margin: EdgeInsets.only(
                              left: 10,
                              top: 5,
                              bottom: 5,
                            ),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage(myprofile[0]),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(4),
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    shape: CircleBorder(),
                                    padding: EdgeInsets.zero,
                                    backgroundColor: Colors.black,
                                    elevation: 2,
                                  ),
                                  child: Icon(
                                    Icons.add,
                                    size: 18,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 5),
                        child: Text(
                          "Your story",
                          style: GoogleFonts.inter(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),

                  // Following stories
                  ...List.generate(
                    accounts.length,
                    (index) => Column(
                      children: [
                        Container(
                          width: 90,
                          height: 90,
                          margin: EdgeInsets.only(
                            left: 10,
                            right: index == accounts.length - 1 ? 10 : 0,
                          ),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(255, 221, 42, 152),
                                Color(0xFFDD2A7B),
                                Color(0xFFF58529),
                                Color.fromARGB(255, 245, 194, 41),
                              ],
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(
                                  color: Colors.white,
                                  width: 4,
                                ),
                                image: DecorationImage(
                                  image: AssetImage(accounts[index].pfp),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 5),
                          child: Text(
                            accounts[index].username,
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ...List.generate(
              posts.length,
              (index) => Padding(
                padding: const EdgeInsets.only(bottom: 20, top: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //account button :
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AccountPage(
                                  account: accounts[posts[index][8]],
                                ),
                              ),
                            );
                          },
                          style:
                              ElevatedButton.styleFrom(
                                backgroundColor: Colors.transparent,
                                padding: EdgeInsets.zero,
                                elevation: 0,
                              ).copyWith(
                                overlayColor: WidgetStateProperty.all(
                                  Colors.transparent,
                                ),
                                shadowColor: WidgetStateProperty.all(
                                  Colors.transparent,
                                ),
                              ),
                          child: Row(
                            children: [
                              Container(
                                height: 45,
                                width: 45,
                                margin: EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage(posts[index][1]),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  posts[index][2],
                                  style: GoogleFonts.inter(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        // the three dots :
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.more_horiz, color: Colors.black),
                          ),
                        ),
                      ],
                    ),

                    // the post :
                    Container(
                      height: 350,
                      width: double.infinity,
                      margin: EdgeInsets.only(top: 5),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(posts[index][0]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    //interactions with post :
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 72,
                          child: Row(
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      setState(() {
                                        posts[index][6] = !posts[index][6];
                                        if (posts[index][6] == true) {
                                          posts[index][3]++;
                                        } else {
                                          posts[index][3]--;
                                        }
                                      });
                                    },
                                    style: IconButton.styleFrom().copyWith(
                                      overlayColor: WidgetStateProperty.all(
                                        Colors.transparent,
                                      ),
                                    ),
                                    icon: Icon(
                                      posts[index][6]
                                          ? Icons.favorite
                                          : Icons.favorite_border,
                                      size: 36,
                                      color: posts[index][6]
                                          ? Colors.red
                                          : Colors.black,
                                    ),
                                  ),

                                  Text(
                                    posts[index][3].toString(),
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),

                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    margin: EdgeInsets.only(top: 5),
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style:
                                          ElevatedButton.styleFrom(
                                            backgroundColor: Colors.transparent,
                                            padding: EdgeInsets.zero,
                                            elevation: 0,
                                          ).copyWith(
                                            overlayColor:
                                                WidgetStateProperty.all(
                                                  Colors.transparent,
                                                ),
                                          ),
                                      child: Image.asset(
                                        'lib/assets/images/comment.webp',
                                      ),
                                    ),
                                  ),

                                  Text(
                                    posts[index][4].toString(),
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),

                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 32,
                                    width: 32,
                                    margin: EdgeInsets.only(left: 7, top: 10),
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style:
                                          ElevatedButton.styleFrom(
                                            backgroundColor: Colors.transparent,
                                            padding: EdgeInsets.zero,
                                            elevation: 0,
                                          ).copyWith(
                                            overlayColor:
                                                WidgetStateProperty.all(
                                                  Colors.transparent,
                                                ),
                                          ),
                                      child: Image.asset(
                                        'lib/assets/images/share.webp',
                                      ),
                                    ),
                                  ),

                                  Text(
                                    posts[index][5].toString(),
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        Container(
                          height: 40,
                          width: 40,
                          margin: EdgeInsets.only(right: 10, bottom: 20),
                          decoration: BoxDecoration(),
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                posts[index][7] = !posts[index][7];
                              });
                            },
                            style:
                                ElevatedButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  backgroundColor: Colors.transparent,
                                  elevation: 0,
                                ).copyWith(
                                  overlayColor: WidgetStateProperty.all(
                                    Colors.transparent,
                                  ),
                                ),
                            child: Image.asset(
                              posts[index][7]
                                  ? 'lib/assets/images/saved.png'
                                  : 'lib/assets/images/save.webp',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
