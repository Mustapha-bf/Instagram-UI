import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram/components/myprofile.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool postbtn = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  myprofile[1],
                  style: GoogleFonts.inter(fontWeight: FontWeight.bold),
                ),

                ElevatedButton(
                  onPressed: () {},
                  style:
                      ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        padding: EdgeInsets.only(bottom: 10),
                      ).copyWith(
                        overlayColor: WidgetStateProperty.all(
                          Colors.transparent,
                        ),
                        shadowColor: WidgetStateProperty.all(
                          Colors.transparent,
                        ),
                      ),
                  child: Transform.rotate(
                    angle: 270 * 3.1416 / 180,
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 14,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),

            Row(
              children: [
                Container(
                  height: 27,
                  width: 27,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 3),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.zero,
                  child: Transform.translate(
                    offset: Offset(-2, -2),
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      icon: Icon(Icons.add, color: Colors.black, size: 25),
                      onPressed: () {},
                    ),
                  ),
                ),

                IconButton(
                  onPressed: () {},
                  style:
                      ButtonStyle(
                        padding: WidgetStateProperty.all(
                          EdgeInsets.only(left: 20),
                        ),
                      ).copyWith(
                        shadowColor: WidgetStateProperty.all(
                          Colors.transparent,
                        ),
                        overlayColor: WidgetStateProperty.all(
                          Colors.transparent,
                        ),
                      ),
                  icon: Icon(Icons.menu, size: 35),
                ),
              ],
            ),
          ],
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 110,
                      width: 110,
                      margin: EdgeInsets.only(left: 15),
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: myprofile[5] ? Border.all() : null,
                      ),
                      clipBehavior: Clip.hardEdge,
                      child: ClipOval(
                        child: Image.asset(
                          myprofile[0],
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 5,
                      right: 5,
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

                Column(
                  children: [
                    Text(
                      myprofile[4].toString(),
                      style: GoogleFonts.inter(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "posts",
                      style: GoogleFonts.inter(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),

                Column(
                  children: [
                    Text(
                      myprofile[2].toString(),
                      style: GoogleFonts.inter(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "followers",
                      style: GoogleFonts.inter(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Column(
                    children: [
                      Text(
                        myprofile[3].toString(),
                        style: GoogleFonts.inter(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "following",
                        style: GoogleFonts.inter(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10),
                  child: Text(
                    myprofile[6],
                    style: GoogleFonts.inter(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 5),
                  child: Text(
                    myprofile[7],
                    style: GoogleFonts.inter(fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style:
                        ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(
                            255,
                            221,
                            220,
                            220,
                          ),
                          elevation: 0,
                          padding: EdgeInsets.only(left: 35, right: 35),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ).copyWith(
                          overlayColor: WidgetStateProperty.all(
                            Colors.transparent,
                          ),
                          shadowColor: WidgetStateProperty.all(
                            Colors.transparent,
                          ),
                        ),
                    child: Text(
                      "Edit profile",
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ),

                  ElevatedButton(
                    onPressed: () {},
                    style:
                        ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(
                            255,
                            221,
                            220,
                            220,
                          ),
                          elevation: 0,
                          padding: EdgeInsets.only(left: 35, right: 35),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ).copyWith(
                          overlayColor: WidgetStateProperty.all(
                            Colors.transparent,
                          ),
                          shadowColor: WidgetStateProperty.all(
                            Colors.transparent,
                          ),
                        ),
                    child: Text(
                      "Share profile",
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 40,
                    width: 40,
                    child: ElevatedButton(
                      onPressed: () {},
                      style:
                          ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(
                              255,
                              221,
                              220,
                              220,
                            ),
                            elevation: 0,
                            padding: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ).copyWith(
                            overlayColor: WidgetStateProperty.all(
                              Colors.transparent,
                            ),
                            shadowColor: WidgetStateProperty.all(
                              Colors.transparent,
                            ),
                          ),
                      child: Icon(
                        Icons.person_add_outlined,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Row(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    margin: EdgeInsets.only(left: 20),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.add, size: 30),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        postbtn = true;
                      });
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
                          shadowColor: WidgetStatePropertyAll(
                            Colors.transparent,
                          ),
                        ),
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        color: postbtn ? Colors.black : Colors.white,
                      ),
                      clipBehavior: Clip.hardEdge,
                      child: Stack(
                        children: [
                          Positioned(
                            right: -3,
                            bottom: -3,
                            child: Icon(
                              Icons.grid_on,
                              size: 26,
                              color: postbtn ? Colors.white : Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        postbtn = false;
                      });
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
                          shadowColor: WidgetStatePropertyAll(
                            Colors.transparent,
                          ),
                        ),
                    child: Container(
                      decoration: BoxDecoration(color: Colors.white),
                      child: Icon(
                        postbtn ? Icons.person : Icons.person_outline,
                        color: Colors.black,
                        size: 25,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              height: 5,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: const Color.fromARGB(255, 233, 233, 233),
                    width: 1.0,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 5,
                    width: 50,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: postbtn
                              ? Colors.black
                              : const Color.fromARGB(255, 233, 233, 233),
                          width: 1.0,
                        ),
                      ),
                    ),
                  ),

                  Container(
                    height: 5,
                    width: 50,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: postbtn
                              ? const Color.fromARGB(255, 233, 233, 233)
                              : Colors.black,
                          width: 1.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Column(children: [Row(children: [
                    
                  ],
                )]),
          ],
        ),
      ),
    );
  }
}
