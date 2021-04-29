import 'package:flutter/material.dart';

void main() => runApp(Uiproto());

class Uiproto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    "https://previews.123rf.com/images/quartadis/quartadis1804/quartadis180400158/100076806-map-of-the-city-locality-color-scheme-background-gps-navigation-along-the-road-and-streets-flat-vect.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(60.0, 20.0, 60.0, 260.0),
                child: TextField(
                  autocorrect: true,
                  decoration: InputDecoration(
                    hintText: 'Search stations',
                    suffixIcon: Icon(Icons.search),
                    hintStyle: TextStyle(color: Colors.grey),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                  ),
                ),
              ),
              MapMarker()
            ]),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        currentIndex: 1,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Menu',
            backgroundColor: Colors.green[900],
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
              backgroundColor: Colors.green[900]),
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.green[900]),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Account',
              backgroundColor: Colors.green[900]),
        ],
      ),
    ));
  }
}

class MapMarker extends StatefulWidget {
  const MapMarker({Key? key}) : super(key: key);

  @override
  _MapMarkerState createState() => _MapMarkerState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MapMarkerState extends State<MapMarker> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        IconButton(
          iconSize: 42.0,
          icon: const Icon(Icons.location_on),
          color: Colors.red,
          tooltip: 'Kapteeninkatu 6',
          onPressed: () {
            setState(() {});
          },
        ),
      ],
    );
  }
}

