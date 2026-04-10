import 'package:blabla/data/dummy_data.dart';
import 'package:blabla/data/repositories/ride/rides_repository.dart';
import 'package:blabla/model/ride/locations.dart';
import 'package:blabla/model/ride/ride.dart';
import 'package:blabla/model/ride_pref/ride_pref.dart';
import 'package:blabla/model/user/user.dart';

class RidesRepositoryMock extends RidesRepository {
  List<Ride> rides = [
    Ride(
      departureLocation: Location(name: "china", country: Country.spain),
      departureDate: DateTime(2022),
      arrivalLocation: Location(name: "iran", country: Country.uk),
      arrivalDateTime: DateTime(2027),
      driver: User(
        firstName: "Jonh",
        lastName: "Jay",
        email: "my@gmail.com",
        phone: "0123455678",
        profilePicture: "./kh.com",
        verifiedProfile: false,
      ),
      availableSeats: 5,
      pricePerSeat: 20.22,
    ),
  ];
  @override
  List<Ride> fetchrides() {
    // TODO: implement fetchrides
    return rides;
  }
List<RidePreference> fakeRidePref= fakeRidePrefs;
  @override
  List<RidePreference> fetchRidePreference() {
    // TODO: implement fetchRidePreference
    return fakeRidePref;
  }
}
