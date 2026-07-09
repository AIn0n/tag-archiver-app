// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'markers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Markers)
final markersProvider = MarkersProvider._();

final class MarkersProvider
    extends $AsyncNotifierProvider<Markers, List<MapMarker>> {
  MarkersProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'markersProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$markersHash();

  @$internal
  @override
  Markers create() => Markers();
}

String _$markersHash() => r'7979ee5f4d56f8c663fe702f3c68c5c26d6f535c';

abstract class _$Markers extends $AsyncNotifier<List<MapMarker>> {
  FutureOr<List<MapMarker>> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<List<MapMarker>>, List<MapMarker>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<MapMarker>>, List<MapMarker>>,
              AsyncValue<List<MapMarker>>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
