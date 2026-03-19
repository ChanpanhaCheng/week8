import 'package:blabla/data/repositories/location/locations_repository.dart';
import 'package:blabla/model/ride/locations.dart';

class LocationsRepositoryMock extends LocationsRepository {
  List<Location> locations = [
    Location(name: "cambodia", country: Country.france),
  ];
  @override
  List<Location> fetchLocations() {
    // TODO: implement fetchLocations
    return locations;
  }
}
