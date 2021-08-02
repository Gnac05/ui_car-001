import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
      
      //Essayions maintenant avec un textfield 
      
      // child: TextField(  
      //   decoration: InputDecoration(
      //     filled: true,
      //     fillColor:Colors.white,
      //     hintText: "Que cherches-tu ?",
      //     hintStyle: TextStyle(
      //       fontSize:20,
      //       color: Colors.black
      //     ),
      //     suffixIcon: Icon(Icons.search),
      //     border: OutlineInputBorder(
      //       borderRadius: BorderRadius.circular(50),
      //       )
      //   ),
      // ),
      
      // ça donne les mêmes choses 
      child: Container(
        height: 80,
        decoration:BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Que cherches-tu ?",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20
                ),
                ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Icon(Icons.search),
            ),  
          ],
        ),
      ),
    );
  }
}