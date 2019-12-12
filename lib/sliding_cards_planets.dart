import './detail_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:math' as math;
// import './planet_earth.dart';
// import './planet_mars.dart';
// import './planet_sun.dart';
// import './planet_venus.dart';
// import './planet_uranus.dart';
// import './Planet_mercury.dart';
// import './planet_saturn.dart';
// import './planet_jupiter.dart';
// import './planet_neptune.dart';
// import './solar_system.dart';

class SlidingCardsView extends StatefulWidget {
  @override
  _SlidingCardsViewState createState() => _SlidingCardsViewState();
}

class _SlidingCardsViewState extends State<SlidingCardsView> {
  PageController pageController;
  double pageOffset = 0;

  // List<Widget> screens = [
  //   Solarsystem(),
  //   // PlanetSun(),
  //   // PlanetMercury(),
  //   // PlanetVenus(),
  //   // PlanetEarth(),
  //   // PlanetMars(),
  //   // PlanetSaturn(),
  //   // PlanetJupiter(),
  //   // PlanetUranus(),
  //   // PlanetNeptune(),
  // ];

  @override
  void initState() {
    super.initState();
    pageController = PageController(viewportFraction: 0.8);
    pageController.addListener(() {
      setState(() => pageOffset = pageController.page);
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.55,
      child: PageView(
        controller: pageController,
        children: <Widget>[
          SlidingCard(
            name: 'SOLAR SYSTEM',
            // date: '4.28-31',
            assetName: 'solarsystem.png',
            offset: pageOffset,
          ),
          SlidingCard(
            name: ' SUN',
            // date: '4.20-30',
            assetName: 'sun.png',
            offset: pageOffset - 1,
          ),
          SlidingCard(
            name: 'MERCURY',
            // date: '4.28-31',
            assetName: 'mercuryFinal.png',
            offset: pageOffset - 2,
          ),
          SlidingCard(
            name: 'Venus',
            // date: '4.28-31',
            assetName: 'venusFinal.png',
            offset: pageOffset - 3,
          ),
          SlidingCard(
            name: 'EARTH',
            // date: '4.28-31',
            assetName: 'earthFinal.png',
            offset: pageOffset - 4,
          ),
          SlidingCard(
            name: 'MARS',
            // date: '4.28-31',
            assetName: 'marsFinal.png',
            offset: pageOffset - 5,
          ),
          SlidingCard(
            name: 'SATURN',
            // date: '4.28-31',
            assetName: 'saturnFinal.png',
            offset: pageOffset - 6,
          ),
          SlidingCard(
            name: 'JUPITER',
            // date: '4.28-31',
            assetName: 'jupiterFinal.png',
            offset: pageOffset - 7,
          ),
          SlidingCard(
            name: 'URANUS',
            // date: '4.28-31',
            assetName: 'uranusFinal.png',
            offset: pageOffset - 8,
          ),
          SlidingCard(
            name: 'NEPTUNE',
            // date: '4.28-31',
            assetName: 'neptuneFinal.png',
            offset: pageOffset - 9,
          ),
        ],
      ),
    );
  }
}

class SlidingCard extends StatelessWidget {
  final String name;
  // final String date;
  final String assetName;
  final double offset;

  const SlidingCard({
    Key key,
    @required this.name,
    // @required this.date,
    @required this.assetName,
    @required this.offset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double gauss = math.exp(-(math.pow((offset.abs() - 0.5), 2) / 0.08));
    return Transform.translate(
      offset: Offset(-32 * gauss * offset.sign, 0),
      child: Card(
        color: Colors.black,
        margin: EdgeInsets.only(left: 8, right: 8, bottom: 24),
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
              child: ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
                child: Image.asset(
                  'assets/$assetName',
                  height: MediaQuery.of(context).size.height * 0.27,
                  alignment: Alignment(-offset.abs(), 0),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(height: 8),
            Expanded(
              child: CardContent(
                name: name,
                // date: date,
                offset: gauss,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardContent extends StatelessWidget {
  final String name;
  // final String date;
  final double offset;

  const CardContent(
      {Key key,
      @required this.name,
      // @required this.date,
      @required this.offset})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Transform.translate(
            offset: Offset(8 * offset, 0),
            child: Center(
              child: Text(name,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  )),
            ),
          ),
          SizedBox(height: 8),
          Transform.translate(
            offset: Offset(32 * offset, 0),
          ),
          Spacer(),
          Row(
            children: <Widget>[
              Transform.translate(
                offset: Offset(48 * offset, 0),
                child: RaisedButton(
                  color: Colors.blueAccent,
                  child: Transform.translate(
                    offset: Offset(24 * offset, 0),
                    child: Text('Details'),
                  ),
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => Container(child: SecondRoute())),
                    );
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

