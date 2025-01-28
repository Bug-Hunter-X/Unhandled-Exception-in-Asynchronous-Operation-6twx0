```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>?> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        return jsonDecode(response.body);
      } catch (e) {
        print('Error decoding JSON: $e');
        return null; // Or throw a custom exception
      }
    } else {
      print('Failed to load data. Status code: ${response.statusCode}');
      return null; // Or throw a custom exception
    }
  } catch (e) {
    print('Error fetching data: $e');
    return null; // Or throw a custom exception
  }
}
```