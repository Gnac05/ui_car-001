
import 'package:flutter/material.dart';

class Voiture{
  final String? car;
  final int? litre;
  final int? puissance;
  final String? marque;
  final String? vendeur;
  final String? lieu;
  final int? sortie;
  final int? kilometrage;
  final int? capcar;

  Voiture({
    @required this.car, 
    @required this.capcar,
    @required this.litre, 
    @required this.puissance,
    @required this.marque,
    @required this.vendeur,
    @required this.lieu,
    @required this.sortie,
    @required this.kilometrage, 
  });
}