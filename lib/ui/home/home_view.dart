import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:latlong2/latlong.dart';
import 'package:tag_archiver_app/domain/location.dart';
import 'package:tag_archiver_app/ui/home/user_map_widget.dart';

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currPos = ref.watch(getCurrentPositionProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Map')),
      body: SizedBox.expand(
        child: switch (currPos) {
          AsyncData(:final value) => UserMapWidget(userLocation: value),
          AsyncError() => const UserMapWidget(
            userLocation: LatLng(
              // default position: Lodz City
              51.759444,
              19.458611,
            ),
          ),
          AsyncLoading() => const CircularProgressIndicator(),
        },
      ),
    );
  }
}
