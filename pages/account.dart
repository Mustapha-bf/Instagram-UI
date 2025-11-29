import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram/components/accounts.dart';

class AccountPage extends StatefulWidget {
  final Account account;

  const AccountPage({super.key, required this.account});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  bool postbtn = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/main');
              },
              icon: Icon(Icons.arrow_back_ios),
            ),
            Text(
              widget.account.username,
              style: GoogleFonts.inter(fontWeight: FontWeight.bold),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz)),
          ],
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 90,
                  width: 90,
                  margin: EdgeInsets.only(left: 15),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black, width: 2),
                  ),
                  child: ClipOval(
                    child: Image.asset(widget.account.pfp, fit: BoxFit.cover),
                  ),
                ),

                Column(
                  children: [
                    Text(
                      widget.account.posts.toString(),
                      style: GoogleFonts.inter(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "posts",
                      style: GoogleFonts.inter(fontWeight: FontWeight.w600),
                    ),
                  ],
                ),

                Column(
                  children: [
                    Text(
                      widget.account.followers.toString(),
                      style: GoogleFonts.inter(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "followers",
                      style: GoogleFonts.inter(fontWeight: FontWeight.w600),
                    ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Column(
                    children: [
                      Text(
                        widget.account.followings.toString(),
                        style: GoogleFonts.inter(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "followings",
                        style: GoogleFonts.inter(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(left: 15, top: 10),
              child: Row(
                children: [
                  Text(
                    widget.account.name,
                    style: GoogleFonts.inter(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Text(
                    widget.account.bio,
                    style: GoogleFonts.inter(fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 40,
                    padding: EdgeInsets.symmetric(horizontal: 45),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
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
                      child: Text(
                        "Follow",
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),

                  Container(
                    height: 40,
                    margin: EdgeInsets.only(left: 5, right: 5),
                    padding: EdgeInsets.symmetric(horizontal: 45),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 189, 189, 189),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
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
                      child: Text(
                        "Message",
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),

                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 189, 189, 189),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      style:
                          ButtonStyle(
                            backgroundColor: WidgetStateProperty.all(
                              Colors.transparent,
                            ),
                            padding: WidgetStateProperty.all(EdgeInsets.zero),
                          ).copyWith(
                            overlayColor: WidgetStateProperty.all(
                              Colors.transparent,
                            ),
                            shadowColor: WidgetStatePropertyAll(
                              Colors.transparent,
                            ),
                          ),
                      icon: Icon(Icons.person_add_alt),
                    ),
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
                          color: postbtn ? Colors.black : const Color.fromARGB(255, 233, 233, 233),
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
                          color: postbtn ? const Color.fromARGB(255, 233, 233, 233) : Colors.black,
                          width: 1.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
