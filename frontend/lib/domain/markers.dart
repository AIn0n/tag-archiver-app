import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:latlong2/latlong.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'markers.g.dart';

class MapMarker {
  LatLng pos;
  String name;

  MapMarker({required this.pos, required this.name});
}

@riverpod
class Markers extends _$Markers {
  @override
  FutureOr<List<MapMarker>> build() async {
    return [];
  }

  Future<void> fetchMarkers(double lon, double lat) async {
    state = const AsyncLoading();
    debugPrint("lat = $lat, lon = $lon");
    if (Random().nextBool()) {
      state = AsyncData(<MapMarker>[
        MapMarker(
          pos: const LatLng(51.74016949677465, 19.38490257682647),
          name: "Auto-Serwis opony",
        ),
      ]);
    } else {
      state = AsyncData(<MapMarker>[
        MapMarker(
          pos: const LatLng(51.74758981718882, 19.382019006705274),
          name: "myjnia orlen",
        ),
      ]);
    }
  }
}
