// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(getCurrentPosition)
final getCurrentPositionProvider = GetCurrentPositionProvider._();

final class GetCurrentPositionProvider
    extends $FunctionalProvider<AsyncValue<LatLng>, LatLng, FutureOr<LatLng>>
    with $FutureModifier<LatLng>, $FutureProvider<LatLng> {
  GetCurrentPositionProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getCurrentPositionProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getCurrentPositionHash();

  @$internal
  @override
  $FutureProviderElement<LatLng> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<LatLng> create(Ref ref) {
    return getCurrentPosition(ref);
  }
}

String _$getCurrentPositionHash() =>
    r'b7cf49cc3ca71cfcf03fcfa0f3582824813a4993';
