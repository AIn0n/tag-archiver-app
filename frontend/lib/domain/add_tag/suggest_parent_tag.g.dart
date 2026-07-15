// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'suggest_parent_tag.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SuggestParentTag)
final suggestParentTagProvider = SuggestParentTagProvider._();

final class SuggestParentTagProvider
    extends $AsyncNotifierProvider<SuggestParentTag, List<Suggestion>> {
  SuggestParentTagProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'suggestParentTagProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$suggestParentTagHash();

  @$internal
  @override
  SuggestParentTag create() => SuggestParentTag();
}

String _$suggestParentTagHash() => r'16369f08b1a1bbe7608a4c7f77c4b8213974d0d4';

abstract class _$SuggestParentTag extends $AsyncNotifier<List<Suggestion>> {
  FutureOr<List<Suggestion>> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<List<Suggestion>>, List<Suggestion>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Suggestion>>, List<Suggestion>>,
              AsyncValue<List<Suggestion>>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
