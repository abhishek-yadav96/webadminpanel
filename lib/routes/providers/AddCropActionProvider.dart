import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AddCropActionProvider extends ChangeNotifier {
  String _title = '';
  DateTime? _date;
  String? _message;
  String? _error;

  String get title => _title;
  DateTime? get date => _date;
  String? get message => _message;
  String? get error => _error;

  set title(String newTitle) {
    _title = newTitle;
    notifyListeners();
  }

  set date(DateTime? newDate) {
    _date = newDate;
    notifyListeners();
  }

  Future<void> addCorporateAction() async {
    final url = 'http://ec2-65-0-8-136.ap-south-1.compute.amazonaws.com/api/v1/admin/add-new/corp-action';
    final token = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJfaWQiOiI2NjdkNTgyZGNjNmI5MzU2NGNkNjFiMTUiLCJtb2JpbGUiOiI5ODExMjIzMzg4IiwiaWF0IjoxNzIxNjMzNjk4LCJleHAiOjE3MjI5Mjk2OTh9.vGUmEaT2fy7chgho3Cd-fGF9u1q7T0vwtsujXyTjPjE';

    try {
      final response = await http.post(
        Uri.parse(url),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
        body: jsonEncode({
          'title': _title,
          'date': _date?.toIso8601String(),
        }),
      );

      if (response.statusCode == 201) {
        final data = jsonDecode(response.body);
        _message = data['message'];
        _error = null;
      } else if (response.statusCode == 500) {
        final data = jsonDecode(response.body);
        _message = null;
        _error = data['error'];
      } else {
        _message = null;
        _error = 'An unknown error occurred';
      }

      notifyListeners();
    } catch (e) {
      _message = null;
      _error = 'Failed to make request: $e';
      notifyListeners();
    }
  }
}
