import 'package:flutter/material.dart';

class Customlabel extends StatelessWidget {
  final String texto;
  final Color color;
  final String route;
  const Customlabel({
    Key? key,
    required this.texto,
    required this.color,
    required this.route,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          GestureDetector(
            child: Text(
              texto,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w600),
            ),
            onTap: () {
              Navigator.pushReplacementNamed(context, route);
            },
          ),
        ],
      ),
    );
  }
}
