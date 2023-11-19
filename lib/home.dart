import 'package:flutter/material.dart';

void main() {
  runApp(const Home());
}

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double _with = 50;
  double _height = 50;
  Color _color = Colors.green;
  double _radius = 8;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text(
            'Tp Animation',
            style: TextStyle(fontSize: 30),
          )),
        ),
        body: Center(
          child: AnimatedContainer(
            curve: Curves.easeInOutExpo,
            duration: Duration(seconds: 4),
            width: _with,
            height: _height,
            decoration: BoxDecoration(
                color: _color, borderRadius: BorderRadius.circular(_radius)),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _with = _with == 50 ? 200 : 50;
              _height = _height == 50 ? 200 : 50;
              _color = _color == Colors.green ? Colors.red : Colors.green;
              _radius = _radius == 8 ? 28 : 8;
            });
          },
          child: const Icon(Icons.play_arrow),
        ),
      ),
    );
  }
}
