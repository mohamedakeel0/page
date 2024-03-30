import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  Color? color;
   HomePage({ this.color,super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Container(color: widget.color!,height: 40,width: 30,);
  }
}
