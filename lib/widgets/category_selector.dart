import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoySelector extends StatefulWidget {
  const CategoySelector({Key? key}) : super(key: key);

  @override
  State<CategoySelector> createState() => _CategoySelectorState();
}

class _CategoySelectorState extends State<CategoySelector> {
  late int selectedindex = 0;
  final List<String> categories = ['Messages', 'Online', 'Groups', 'Requests'];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      color: Colors.red,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,// jiif jiif kadhigaa midkaan
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedindex = index; // Use = instead of ==
              });
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 30.0),
              child: Text(
                categories[index],
                style: TextStyle(
                  color: index == selectedindex ? Colors.white : Colors.white60,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}