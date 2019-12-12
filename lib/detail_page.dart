import 'package:flutter/material.dart';


class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Planet Details'),
      ),
      body: Stack(
        children: <Widget>[
         ImageWidget(),
         PlanetDetails(),
          ],
      ),
    );
  }
}

class PlanetDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 300, 15, 10),
        child: Center(
          child: Text(
            '''
SOLAR SYSTEM


Age:	4.6 Billion Years

Number of Planets:	8

Number of Dwarf Planets:	5

Number of Moons:	181

Number of Asteroids:	552,894

Number of Comets:	3,083

Diameter:	18.75 trillion kilometers  (11.65 trillion miles)''', textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

class ImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height/2.5,
      child: Image(
            image: AssetImage('assets/solarsystem.png'),
            fit: BoxFit.scaleDown,
          
        
      ),
            
       
    );
  }
}


