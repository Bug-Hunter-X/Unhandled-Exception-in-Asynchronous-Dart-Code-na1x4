```dart
Future<Map<String, dynamic>?> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      // More specific error handling based on status code
      throw HttpException('HTTP request failed with status: ${response.statusCode}', uri: Uri.parse('https://api.example.com/data'));
    }
  } on SocketException catch (e) {
    // Handle network errors specifically
    print('Network error: $e');
    return null; // or rethrow
  } on FormatException catch (e) {
    // Handle JSON decoding errors
    print('JSON decoding error: $e');
    return null; // or rethrow
  } on HttpException catch (e) {
    // Handle HTTP errors
    print('HTTP error: $e');
    return null; // or rethrow
  } catch (e) {
    // Handle other errors
    print('Unexpected error: $e');
    return null; // or rethrow
  }
}
```