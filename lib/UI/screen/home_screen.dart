import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        // textTheme: ,
        title: Text(
            'Star Wars Random',
            style: GoogleFonts.robotoCondensed(),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Text(
          'Start Project',
          style: TextStyle(
            fontSize: 32,
          ),
        ),
      ),
    );
  }
}
