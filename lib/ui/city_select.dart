import 'package:flutter/material.dart';
import './weather.dart';

class CitySelect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        width: 800,
        height: 2000,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            // Where the linear gradient begins and ends
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            // Add one stop for each color. Stops should increase from 0 to 1
            stops: [0.1, 0.3, 0.7, 0.9],
            colors: [
              // Colors are easy thanks to Flutter's Colors class.
              Colors.indigo[800],
              Colors.indigo[700],
              Colors.red[600],
              Colors.red[400],
            ],
          ),
        ),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RaisedButton(
                    color: Colors.transparent,
                    child: Text('Bangalore',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 48,
                            fontWeight: FontWeight.w900)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Weather(
                            city: 'Bangalore'
                          )
                        )
                      );
                    },
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)) ,
                  ),
                  RaisedButton(
                    color: Colors.transparent,
                    child: Text('Hyderabad',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 48,
                            fontWeight: FontWeight.w900)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Weather(
                            city: 'Hyderabad'
                          )
                        )
                      );
                    },
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)) ,
                  ),
                  RaisedButton(
                    color: Colors.transparent,
                    child: Text('Kozhikode',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 48,
                            fontWeight: FontWeight.w900)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Weather(
                            city: 'Kozhikode'
                          )
                        )
                      );
                    },
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)) ,
                  ),
                  RaisedButton(
                    color: Colors.transparent,
                    child: Text('Nileshwar',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 48,
                            fontWeight: FontWeight.w900)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Weather(
                            city: 'Nileshwar'
                          )
                        )
                      );
                    },
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)) ,
                  ),
                  RaisedButton(
                    color: Colors.transparent,
                    child: Text('Vellore',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 48,
                            fontWeight: FontWeight.w900)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Weather(
                            city: 'Vellore'
                          )
                        )
                      );
                    },
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)) ,
                  )
                ],
              )
            ]),
      ),
    );
  }
}
