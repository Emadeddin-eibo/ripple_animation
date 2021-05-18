import 'package:flutter/material.dart';
import 'package:ripple_animation/ripple_animation.dart';

void main() {
  runApp(
    MaterialApp(
      home: TempScreen(),
    ),
  );
}

class TempScreen extends StatefulWidget {
  @override
  _TempScreenState createState() => _TempScreenState();
}

class _TempScreenState extends State<TempScreen> {
  Key? _key;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
            Center(
              child: ElevatedButton(
                child: Text(
                  'Reply',
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.lightBlue, // background
                ),
                onPressed: () {
                  setState(() {
                    _key = UniqueKey();
                  });
                },
              ),
            ),
            Positioned(
              bottom: -25,
              left: 0,
              right: 0,
              child: Center(
                child: RippleAnimation(
                    repeat: false,
                    key: _key,
                    color: Colors.blue,
                    minRadius: 100,
                    ripplesCount: 6,
                    child: Container()
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
