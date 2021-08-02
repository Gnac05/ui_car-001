import 'package:flutter/material.dart';
import 'package:ui_car_listview/model/data.dart';
import 'package:ui_car_listview/screen/search.dart';
import 'package:ui_car_listview/widget/cardvoiture.dart';


class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Car4Sell",style: TextStyle(fontSize: 25),),
          //J'ai mis le padding pour qu'il y est de l'espace entre les icons 
          actions: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width:20,child: Image.asset("assets/icons/bell-simple-fill.png",color: Colors.white ,)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(width:20,child: Image.asset("assets/icons/map-pin-fill.png",color: Colors.white )),
                ),
              ],
            )
          ],
          elevation:0,
        ),
        body: Column(
          children: [
            Expanded(child: Search()),
            SizedBox(
              height: 10,
            ),
            Expanded(
              flex: 16,
              child: ListView.separated(
                itemCount: voitureList.length,
                separatorBuilder: (BuildContext context, int index) {
                return SizedBox(height: 25.0,);
                },
                itemBuilder: (BuildContext context, int index) {
                return CardVoiture(cars: voitureList[index]);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}