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
    final markers = ref.watch(getMarkersForPositionProvider);
    return FlutterMap(
      mapController: _mapController,
      options: MapOptions(
        initialCenter: widget.initialCenterPos,
        initialZoom: 17.0,
        onMapEvent: (MapEvent event) {
          if (event is MapEventMoveEnd) {}
        },
      ),
      children: [
        TileLayer(
          // Bring your own tiles
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          userAgentPackageName: 'test.tag-archiver.app',
          // And many more recommended properties!
        ),
        const MarkerLayer(
          markers: [
            Marker(
              point: LatLng(51.73930349296944, 19.38546432264114),
              width: 80,
              height: 80,
              child: Icon(
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
      ],
    );
  }
}
