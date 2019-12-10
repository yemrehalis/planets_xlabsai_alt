import 'package:flutter/material.dart';
import './tab_text.dart';
import './sliding_cards_planets.dart';



class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 10),
                Header(),
                SizedBox(height: 40),
                Tabs(),
                SizedBox(height: 20),
                SlidingCardsView(),
              
              
              ],
            ),
          ),
          // ExhibitionBottomSheet(),
        ],
      ),
    );
  }
}

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50),
      child: 
       Text(
          'EXPLORER',
          style: TextStyle(
            color: Colors.black,
            fontSize: 55,
            fontWeight: FontWeight.bold,
          ),
        ),
      
    );
  }
}

