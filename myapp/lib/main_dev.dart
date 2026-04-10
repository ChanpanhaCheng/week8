import 'package:blabla/data/repositories/location/locations_repository.dart';
import 'package:blabla/data/repositories/location/locations_repository_mock.dart';
import 'package:blabla/data/repositories/ride/rides_repository.dart';
import 'package:blabla/data/repositories/ride/rides_repository_mock.dart';
import 'package:blabla/data/repositories/ride_preference/ride_preference_repository.dart';
import 'package:blabla/data/repositories/ride_preference/ride_preference_repository_mock.dart';
import 'package:blabla/main_common.dart';
import 'package:blabla/ui/states/ride_preferences_state.dart';
// import 'package:blabla/model/ride/locations.dart';
import 'package:provider/provider.dart';

List<InheritedProvider> get devProviders {
  return [
    Provider<LocationsRepository>(create: (_) => LocationsRepositoryMock()),
    Provider<RidesRepository>(create: (_)=>RidesRepositoryMock()),
    Provider<RidePreferenceRepository>(create: (context) => RidePreferenceRepositoryMock(),),
    Provider<LocationsRepository>(create: (_) => LocationsRepositoryMock(),),
    ChangeNotifierProvider<RidePreferencesState>(create: (_) => RidePreferencesState( RidePreferenceRepositoryMock())),
  ];
}

void main(List<String> args) {
  mainCommon(devProviders);
}
