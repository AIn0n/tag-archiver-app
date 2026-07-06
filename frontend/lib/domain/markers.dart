import 'dart:developer';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'markers.g.dart';

class Marker {
  double lat;
  double lon;
  String name;

  Marker({required this.lat, required this.lon, required this.name});
}

@riverpod
Future<List<Marker>> getMarkersForPosition(
  Ref ref, {
  required double lat,
  required double lon,
}) async {
  log("lat = $lat, lon = $lon");
  return <Marker>[
    Marker(
      lat: 51.74016949677465,
      lon: 19.38490257682647,
      name: "Auto-Serwis opony",
    ),
  ];
}
