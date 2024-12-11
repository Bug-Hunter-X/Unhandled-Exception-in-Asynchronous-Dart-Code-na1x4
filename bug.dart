```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Success
      final jsonData = jsonDecode(response.body);
      // Process jsonData here
    } else {
      // Error handling
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Exception handling
    print('Error fetching data: $e');
    //rethrow; //Consider rethrowing to let upper layers handle
  }
}
```