import 'package:file_picker/file_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'suggest_parent_tag.g.dart';

class Suggestion {
  String name;

  Suggestion({required this.name});
}

@riverpod
class SuggestParentTag extends _$SuggestParentTag {
  @override
  FutureOr<List<Suggestion>> build() async {
    return [];
  }

  Future<void> getSuggestions(Future<FilePickerResult?> file) async {
    state = const AsyncLoading();
    final result = await file;
    state = AsyncData([Suggestion(name: result!.files[0].size.toString())]);
  }
}
