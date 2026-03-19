import 'package:blabla/data/repositories/ride_preference/ride_preference_repository.dart';
import 'package:blabla/model/ride/locations.dart';
import 'package:blabla/model/ride_pref/ride_pref.dart';

class RidePreferenceRepositoryMock extends RidePreferenceRepository {
  List<RidePreference> ridePref = [
    RidePreference(
      departure: Location(name: "china", country: Country.spain),
      departureDate: DateTime(2022),
      arrival: Location(name: "iran", country: Country.uk),
      requestedSeats: 5,
    ),
  ];
  @override
  List<RidePreference> fetchridePrefs() {
    // TODO: implement fetchridePrefs
    return ridePref;
  }
}
