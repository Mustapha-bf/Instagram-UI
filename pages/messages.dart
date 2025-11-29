import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram/components/messages.dart';
import 'package:instagram/components/myprofile.dart';
import 'package:instagram/pages/discussion.dart';

class Messages extends StatefulWidget {
  const Messages({super.key});

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 40,
                        width: 40,
                        child: IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/main');
                          },
                          style:
                              ButtonStyle(
                                padding: WidgetStateProperty.all(
                                  EdgeInsets.zero,
                                ),
                              ).copyWith(
                                shadowColor: WidgetStateProperty.all(
                                  Colors.transparent,
                                ),
                              ),
                          icon: Icon(Icons.arrow_back_ios),
                        ),
                      ),
                      Text(
                        myprofile[1],
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),

                  Stack(
                    children: [
                      Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 3),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          height: 10,
                          width: 10,
                          color: Colors.white,
                        ),
                      ),
                      Positioned(
                        bottom: -5,
                        left: -5,
                        child: IconButton(
                          onPressed: () {},
                          style: ButtonStyle().copyWith(
                            shadowColor: WidgetStateProperty.all(
                              Colors.transparent,
                            ),
                            overlayColor: WidgetStateProperty.all(
                              Colors.transparent,
                            ),
                          ),
                          icon: Icon(Icons.create_outlined, size: 25),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Column(
              children: [
                Container(
                  height: 40,
                  width: double.infinity,
                  margin: EdgeInsets.only(
                    left: 10,
                    right: 10,
                    top: 20,
                    bottom: 20,
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 220, 220, 220),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: const Color.fromARGB(255, 127, 127, 127),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(bottom: 5),
                            hintText: 'Search...',
                            hintStyle: GoogleFonts.inter(
                              color: const Color.fromARGB(255, 127, 127, 127),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Messages",
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
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
                        child: Text(
                          "requests",
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 0),
                  child: ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: List.generate(
                      userMessages.length,
                      (index) => Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  userMessages[index].read = true;
                                });
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Discussion(
                                      userMessages: userMessages[index],
                                    ),
                                  ),
                                );
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
                              child: Row(
                                children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    margin: EdgeInsets.only(left: 10),
                                    child: ClipOval(
                                      child: Image.asset(
                                        userMessages[index].account.pfp,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          userMessages[index].account.username,
                                          style: GoogleFonts.inter(
                                            fontWeight: userMessages[index].read
                                                ? FontWeight.w700
                                                : FontWeight.w900,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          userMessages[index]
                                              .messages
                                              .last
                                              .chat
                                              .last,
                                          style: GoogleFonts.inter(
                                            fontWeight: userMessages[index].read
                                                ? FontWeight.w500
                                                : FontWeight.w700,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            Row(
                              children: [
                                Container(
                                  height: 10,
                                  width: 10,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: userMessages[index].read
                                        ? Colors.white
                                        : const Color.fromARGB(
                                            255,
                                            71,
                                            110,
                                            239,
                                          ),
                                  ),
                                ),

                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.camera_alt_outlined),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
