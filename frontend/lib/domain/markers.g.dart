// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'markers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(getMarkersForPosition)
final getMarkersForPositionProvider = GetMarkersForPositionFamily._();

final class GetMarkersForPositionProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Marker>>,
          List<Marker>,
          FutureOr<List<Marker>>
        >
    with $FutureModifier<List<Marker>>, $FutureProvider<List<Marker>> {
  GetMarkersForPositionProvider._({
    required GetMarkersForPositionFamily super.from,
    required ({double lat, double lon}) super.argument,
  }) : super(
         retry: null,
         name: r'getMarkersForPositionProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$getMarkersForPositionHash();

  @override
  String toString() {
    return r'getMarkersForPositionProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<List<Marker>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Marker>> create(Ref ref) {
    final argument = this.argument as ({double lat, double lon});
    return getMarkersForPosition(ref, lat: argument.lat, lon: argument.lon);
  }

  @override
  bool operator ==(Object other) {
    return other is GetMarkersForPositionProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$getMarkersForPositionHash() =>
    r'5f5230ad574d7ccdd0670f743d5a82bedaf57d23';

final class GetMarkersForPositionFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<List<Marker>>,
          ({double lat, double lon})
        > {
  GetMarkersForPositionFamily._()
    : super(
        retry: null,
        name: r'getMarkersForPositionProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  GetMarkersForPositionProvider call({
    required double lat,
    required double lon,
  }) => GetMarkersForPositionProvider._(
    argument: (lat: lat, lon: lon),
    from: this,
  );

  @override
  String toString() => r'getMarkersForPositionProvider';
}
