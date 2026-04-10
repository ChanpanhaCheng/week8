

import 'package:blabla/data/repositories/ride_preference/ride_preference_repository.dart';
import 'package:blabla/model/ride_pref/ride_pref.dart';
import 'package:flutter/material.dart';

class RidePreferencesState extends ChangeNotifier {
  final RidePreferenceRepository ridePref;
  List<RidePreference> historyRidePre=[];
  RidePreference? ridePrefSelect;

  RidePreferencesState(this.ridePref);

  void init() {
      historyRidePre=  ridePref.fetchridePrefs();
      notifyListeners();
  }
  void selectRidePref(RidePreference rp){
    if(ridePrefSelect!=rp){
      ridePrefSelect=rp;
      historyRidePre.add(rp);
      notifyListeners();
    }
  }

}