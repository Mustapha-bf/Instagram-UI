import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram/components/messages.dart';
import 'package:instagram/pages/account.dart';

class Discussion extends StatelessWidget {
  final UserMessages userMessages;

  const Discussion({super.key, required this.userMessages});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/messages');
                  },
                  icon: Icon(Icons.arrow_back_ios),
                ),

                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            AccountPage(account: userMessages.account),
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
                        shadowColor: WidgetStatePropertyAll(Colors.transparent),
                      ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: ClipOval(
                          child: Image.asset(
                            userMessages.account.pfp,
                            height: 35,
                            width: 35,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: (userMessages.account.name == '')
                                      ? 17
                                      : 0,
                                ),
                                child: Text(
                                  (userMessages.account.name == '')
                                      ? userMessages.account.username
                                      : userMessages.account.name,
                                  style: GoogleFonts.inter(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),

                          Text(
                            (userMessages.account.name == '')
                                ? ''
                                : userMessages.account.username,
                            style: GoogleFonts.inter(
                              color: const Color.fromARGB(255, 132, 132, 132),
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),

            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.phone_outlined, size: 25),
                ),

                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.videocam_outlined, size: 35),
                ),
              ],
            ),
          ],
        ),
      ),

      body: SingleChildScrollView(
        reverse: true,
        padding: EdgeInsets.symmetric(vertical: 10),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height,
          ),
          child: IntrinsicHeight(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: List.generate(
                userMessages.messages.length,
                (index) => Column(
                  children: List.generate(
                    userMessages.messages[index].chat.length,
                    (i) => Row(
                      mainAxisAlignment: userMessages.messages[index].isMe
                          ? MainAxisAlignment.end
                          : MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(
                            vertical: 5,
                            horizontal: 10,
                          ),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: userMessages.messages[index].isMe
                                ? Colors.deepPurple
                                : const Color.fromARGB(255, 213, 213, 213),
                            borderRadius: BorderRadius.circular(70),
                          ),
                          child: Text(
                            userMessages.messages[index].chat[i],
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w500,
                              color: userMessages.messages[index].isMe
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),

      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        child: Container(
          height: 100,
          width: double.infinity,
          padding: EdgeInsets.only(left: 5, right: 5),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 213, 213, 213),
            borderRadius: BorderRadius.circular(70),
          ),
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.deepPurple),
                  padding: WidgetStateProperty.all(EdgeInsets.zero),
                ),
                icon: Icon(
                  Icons.camera_alt_rounded,
                  size: 24,
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: "message",
                    labelStyle: TextStyle(
                      color: const Color.fromARGB(255, 128, 128, 128),
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
