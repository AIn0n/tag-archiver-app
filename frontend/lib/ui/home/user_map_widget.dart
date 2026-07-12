import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:latlong2/latlong.dart';
import 'package:tag_archiver_app/domain/markers.dart';
import 'package:url_launcher/url_launcher.dart';

class UserMapWidget extends ConsumerStatefulWidget {
  final LatLng initialCenterPos;

  const UserMapWidget({super.key, required this.initialCenterPos});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _UserMapState();
}

class _UserMapState extends ConsumerState<UserMapWidget> {
  final _mapController = MapController();

  @override
  void dispose() {
    _mapController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final markers = ref.watch(markersProvider);
    return FlutterMap(
      mapController: _mapController,
      options: MapOptions(
        initialCenter: widget.initialCenterPos,
        initialZoom: 17.0,
        onMapReady: () => fetchMarkers(),
        onMapEvent: (MapEvent event) {
          if (event is MapEventMoveEnd) {
            fetchMarkers();
          }
        },
      ),
      children: [
        TileLayer(
          // Bring your own tiles
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          userAgentPackageName: 'test.tag-archiver.app',
          // And many more recommended properties!
        ),
        if (markers.hasValue)
          MarkerLayer(
            markers: [
              for (var marker in markers.value!)
                Marker(
                  point: marker.pos,
                  width: 80,
                  height: 80,
                  child: const Icon(
                    Icons.location_pin,
                    color: Color(0xFF3B5998),
                    size: 40,
                  ),
                ),
            ],
          ),
        RichAttributionWidget(
          // Include a stylish prebuilt attribution widget that meets all requirments
          attributions: [
            TextSourceAttribution(
              'OpenStreetMap contributors',
              onTap: () =>
                  launchUrl(Uri.parse('https://openstreetmap.org/copyright')),
            ),
          ],
        ),
        Align(
          alignment: AlignmentGeometry.bottomCenter,
          child: TextButton(
            onPressed: () => print("It works!"),
            style: TextButton.styleFrom(backgroundColor: Colors.blue),
            child: const Text("Add new tag"),
          ),
        ),
      ],
    );
  }

  void fetchMarkers() {
    ref
        .watch(markersProvider.notifier)
        .fetchMarkers(
          _mapController.camera.center.longitude,
          _mapController.camera.center.latitude,
        );
  }
}
