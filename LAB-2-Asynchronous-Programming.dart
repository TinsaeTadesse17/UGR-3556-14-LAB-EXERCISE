import 'dart:io';
import 'package:http/http.dart' as http;

Future<void> downloadFile(String url, String savePath) async {
  final file = File(savePath);

  try {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      await file.writeAsBytes(response.bodyBytes);
      print('File downloaded successfully!');
    } else {
      print('Error downloading file. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error downloading file: $e');
  }
}

void main() async {
  final String url = 'https://example.com/file.pdf';
  final String savePath = 'path/to/save/file.pdf';

  print('Downloading file...');

  await downloadFile(url, savePath);

  print('Download complete!');
}
