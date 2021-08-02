import 'package:flutter/material.dart';
import 'package:ui_car_listview/widget/customRow.dart';
import 'package:ui_car_listview/model/voiture.dart';

class CardVoiture extends StatelessWidget {
  final Voiture cars;
  const CardVoiture({ Key? key, required this.cars }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: Stack(
        children: [
          
          // le grand container
          Container(
            height: 300.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15)
              ),
            ),
          Positioned(
            bottom: 0,
              top: 100.0,
              left: 0,
              right: 0,
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15)
                ),
              ),
          ),

          //container noir
            Positioned(
              bottom: 0,
              top: 200,
              left: 0,
              right: 0,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("${cars.litre} L",style: TextStyle(color: Colors.white),),
                              ],
                            )),
                            Expanded(child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("${cars.vendeur}",style: TextStyle(color: Colors.white)),
                              ],
                            )),
                          ],
                        ),
                        flex: 1),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(child: Text("${cars.marque}",style: TextStyle(color: Colors.white)),flex: 1,),
                            Expanded(
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        height: 10,
                                        width: 10,
                                        child: Image.asset("assets/icons/map-pin-fill.png"),
                                      ),
                                      Text("${cars.lieu}",style: TextStyle(color: Colors.white,fontSize: 10))
                                    ],
                                  )),
                                  Expanded(flex:1,child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("${cars.sortie}",style: TextStyle(color: Colors.white,fontSize: 10)),
                                    ],
                                  )),
                                ],
                              ),
                              flex: 2,)
                          ],
                        ),
                        flex: 1),
                        
                        // Le widget utilisé ici est pour reduire un peu le code
                      Row(
                        children: [
                          Expanded(child: CustomRow(icon: "gas-pump-fill.png",text: "${cars.capcar} CC",)),
                          Expanded(child: CustomRow(icon: "compass-fill.png", text: '${cars.puissance} bhp')),
                          Expanded(child: CustomRow(icon: 'gauge-fill.png', text: '${cars.kilometrage} kmpl'))
                        ],
                      )
                    ],
                  ),
                ),
              height: 100,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(0),topRight: Radius.circular(0),bottomLeft: Radius.circular(15.0),bottomRight: Radius.circular(15.0)) 
                ),
              ),
            ),
            Positioned(
              bottom: 90.0,
              top: -50.0,
              left: 0,
              right: 0,
              child: Image.asset(
                "assets/images/${cars.car}"
              ),
            )
        ],
      ),
    );
  }
}