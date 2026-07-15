import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tag_archiver_app/domain/add_tag/suggest_parent_tag.dart';

class AddTagView extends ConsumerWidget {
  const AddTagView({super.key});

  void getFile(WidgetRef ref) {
    Future<FilePickerResult?> file = FilePicker.platform.pickFiles(
      allowMultiple: false,
      type: FileType.custom,
      allowedExtensions: ["png", "jpeg", "jpg"],
    );
    ref.read(suggestParentTagProvider.notifier).getSuggestions(file);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final suggestions = ref.watch(suggestParentTagProvider);
    return Scaffold(
      appBar: AppBar(title: const Text("Add new tag")),
      body: SizedBox.expand(
        child: Column(
          children: [
            TextButton(
              onPressed: () => getFile(ref),
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              child: const Text("Add file"),
            ),
            switch (suggestions) {
              AsyncData(:final value) =>
                value.isNotEmpty
                    ? Text('file size: ${value[0].name}')
                    : const SizedBox.shrink(),
              AsyncLoading() => const CircularProgressIndicator(),
              AsyncError() => const Text("Uga buga error happen"),
            },
          ],
        ),
      ),
    );
  }
}
