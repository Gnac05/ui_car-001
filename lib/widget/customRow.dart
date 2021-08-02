import 'package:flutter/material.dart';

class CustomRow extends StatelessWidget {
  final String? icon;
  final String? text;
  const CustomRow({ Key? key,@required this.icon,@required this.text }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              height: 15,
              width: 15,
              child: Image.asset("assets/icons/$icon"),
            ),
          ),
          Expanded(
            flex: 4,
            child: Text("$text",style: TextStyle(color: Colors.white,fontSize: 13)))
        ],
      ),
    );
  }
}