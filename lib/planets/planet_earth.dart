import 'package:flutter/material.dart';


class PlanetEarth extends StatefulWidget {
  @override
  _PlanetEarthState createState() => _PlanetEarthState();
}

class _PlanetEarthState extends State<PlanetEarth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.blueGrey[900],
      body: Container(
        color: Colors.black,
        padding: EdgeInsets.fromLTRB(10, 30, 10, 10),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    //IconWidget(),
                    //SizedBox(height:1),
                    PlanetWidget(),

                    TextWidget(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Earth Page Text
class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      //height: MediaQuery.of(context).size.height / 1.2,
      width: MediaQuery.of(context).size.width / 1.1,
      child: Container(
        child: Text(
          '''
EARTH

Mass:	5,972,190,000,000,000 billion kg

Equatorial Diameter:	12,756 km

Polar Diameter:	12,714 km

Equatorial Circumference:	40,030 km

Known Moons:	1

Notable Moons:	The Moon

Orbit Distance:	149,598,262 km (1 AU)

Orbit Period:	365.26 Earth days

Surface Temperature:	-88 to 58° C''',
          style: TextStyle(
            fontSize: 13,
            color: Colors.white60,
          ),
        ),
      ),
    );
  }
}

class PlanetWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.width,
        // padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/earth.png"),
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
    );
  }
}
