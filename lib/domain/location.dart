import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'location.g.dart';

@riverpod
Future<LatLng> getCurrentPosition(Ref ref) async {
  if (await Geolocator.isLocationServiceEnabled() ||
      await Geolocator.checkPermission() == LocationPermission.denied) {
    return Future.error("Location not enabled");
  }
  final pos = await Geolocator.getCurrentPosition();
  return LatLng(pos.latitude, pos.longitude);
}
