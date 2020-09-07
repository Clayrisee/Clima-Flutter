import 'package:geolocator/geolocator.dart';

class Location{

  double latidude, longitidude;

  // Location({this.latidude, this.longitidude});

  Future<void> getCurrentLocation() async {

    try{
    //Async use for bg task that took a long time
    Position position = await Geolocator()
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.medium);
    // print(position);
    latidude = position.latitude;
    longitidude = position.longitude;
    }catch(e){
      print(e);
    }
  }


}