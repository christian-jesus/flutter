import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  bool _isParaSelected = true;
  double _lineHeight = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: IconButton(
            icon: Icon(Icons.live_tv),
            onPressed: () {
              setState(() {
                _isParaSelected = false;
              });
            },
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                _isParaSelected = true;
              });
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Para ti',
                  style: TextStyle(
                    color: _isParaSelected ? Colors.black : Colors.grey,
                  ),
                ),
                if (_isParaSelected)
                  AnimatedContainer(
                    duration: Duration(milliseconds: 200),
                    height: _lineHeight,
                    color: Colors.black,
                  ),
              ],
            ),
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                _isParaSelected = false;
              });
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Siguiendo',
                  style: TextStyle(
                    color: !_isParaSelected ? Colors.black : Colors.grey,
                  ),
                ),
                if (!_isParaSelected)
                  AnimatedContainer(
                    duration: Duration(milliseconds: 200),
                    height: _lineHeight,
                    color: Colors.black,
                  ),
              ],
            ),
          ),
        ),
        Expanded(
          child: IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Código para cargar la página de búsqueda
            },
          ),
        ),
      ],
    );
  }
}
