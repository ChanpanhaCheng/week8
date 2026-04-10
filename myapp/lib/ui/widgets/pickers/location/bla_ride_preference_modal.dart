import 'package:blabla/data/repositories/location/locations_repository.dart';
import 'package:flutter/material.dart';


class BlaRidePreferenceModal extends ChangeNotifier{
  final LocationsRepository location;
  BlaRidePreferenceModal({required this.location}){
    init();
  }


  void init(){
   location.fetchLocations();
    notifyListeners();
  }
}