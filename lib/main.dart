import 'package:flutter/material.dart';

void main() {
  runApp(WatchApp());
}

class WatchApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Watch App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WatchPage(),
    );
  }
}

class WatchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Watch App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            WatchFace(),
            SizedBox(height: 20.0),
            WatchControls(),
          ],
        ),
      ),
    );
  }
}

class WatchFace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      height: 200.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey[200],
        border: Border.all(color: Colors.black, width: 2.0),
      ),
      child: Center(
        child: Text(
          '12:34',
          style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class WatchControls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Handle previous button press
          },
        ),
        IconButton(
          icon: Icon(Icons.play_arrow),
          onPressed: () {
            // Handle play button press
          },
        ),
        IconButton(
          icon: Icon(Icons.arrow_forward),
          onPressed: () {
            // Handle next button press
          },
        ),
      ],
    );
  }
}
