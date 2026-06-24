import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Random Joke Generator')),
      body: SizedBox.expand(
        child: FlutterMap(
          options: const MapOptions(
            initialCenter: LatLng(
              51.509364,
              -0.128928,
            ), // Center the map over London, UK
            initialZoom: 9.2,
          ),
          children: [
            TileLayer(
              // Bring your own tiles
              urlTemplate:
                  'https://tile.openstreetmap.org/{z}/{x}/{y}.png', // For demonstration only
              userAgentPackageName: 'test.tag-archiver.app',
              // And many more recommended properties!
            ),
            RichAttributionWidget(
              // Include a stylish prebuilt attribution widget that meets all requirments
              attributions: [
                TextSourceAttribution(
                  'OpenStreetMap contributors',
                  onTap: () => launchUrl(
                    Uri.parse('https://openstreetmap.org/copyright'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
