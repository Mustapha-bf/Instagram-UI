import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          height: 40,
          width: double.infinity,
          margin: EdgeInsets.only(left: 10, right: 10),
          padding: EdgeInsets.only(right: 10, left: 10),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 222, 222, 222),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Icon(Icons.search, color: const Color.fromARGB(255, 119, 115, 115), size: 20),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 4, left: 5),
                  child: TextField(
                    decoration: InputDecoration(hintText: 'search',hintStyle: GoogleFonts.inter(color: const Color.fromARGB(255, 109, 109, 109)), border: InputBorder.none),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      body: Column(
        children: [
          //recently searched accounts
        ],
      ),
    );
  }
}
