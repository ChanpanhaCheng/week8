import 'package:blabla/model/ride/ride.dart';
import 'package:blabla/model/ride_pref/ride_pref.dart';

abstract class RidesRepository {
  List<Ride> fetchrides();
  List<RidePreference> fetchRidePreference();
}
