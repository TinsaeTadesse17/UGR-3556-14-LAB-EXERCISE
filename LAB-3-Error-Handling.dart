import 'dart:io';

void main() {
  final String filePath = 'path/to/file.txt';

  try {
    final File file = File(filePath);

    if (!file.existsSync()) {
      print('Error: File not found at $filePath');
      return;
    }

    final String contents = file.readAsStringSync();

    print('File contents:');
    print(contents);
  } on FileSystemException catch (e) {
    print('Error: Failed to read the file at $filePath');
  } catch (e) {
    print('An error occurred: $e');
  }
}
