import 'package:blabla/data/dummy_data.dart';
import 'package:blabla/data/repositories/location/locations_repository.dart';
import 'package:blabla/model/ride/locations.dart';

class LocationsRepositoryMock extends LocationsRepository {
  List<Location> locations = fakeLocations;
  @override
  List<Location> fetchLocations() {
    // TODO: implement fetchLocations
    return locations;
  }
}
