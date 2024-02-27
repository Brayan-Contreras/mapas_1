import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart' show ChangeNotifier;
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeController extends ChangeNotifier {
  Map<MarkerId, Marker> _markers = {};
  Set<Marker> get markers => _markers.values.toSet();

  void onTap(LatLng position) {
    final markerId = MarkerId(_markers.length.toString());
    final marker = Marker(
      markerId: markerId, 
      position: position,
      onTap: (){
      print(markerId.toString());
      }
    );
    _markers[markerId] = marker;
    notifyListeners();
  }

  // void onMapCreated(GoogleMapController controller){
  //   controller.setMapStyle(mapStyle)
  // }
}
