import 'package:geolocator/geolocator.dart';

class Location {
  double latitude,longitude;
  Position _position;

  Future<void> getCurrentLocation() async {
    try{
      _position = await getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      latitude = _position.latitude;
      longitude = _position.longitude;
    }catch(e){
      print(e);
    }
  }

  // Position getLocation() {
  //   return _position;
  // }

}