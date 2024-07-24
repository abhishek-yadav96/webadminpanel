import 'package:dashboard/routes/model/allnews.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AllnewsfilterProvider with ChangeNotifier {
  List<News> _newsList = [];
  List<News> get newsList => _newsList;

  String _filterCompanyName = '';

  void setFilter(String companyName) {
    _filterCompanyName = companyName;
    fetchNews();
  }

  Future<void> fetchNews() async {
    final response = await http.get(
      Uri.parse('http://ec2-65-0-8-136.ap-south-1.compute.amazonaws.com/api/v1/admin/all-news-list?companyName=$_filterCompanyName'),
      headers: {
        'Authorization': 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJfaWQiOiI2NjdkNTgyZGNjNmI5MzU2NGNkNjFiMTUiLCJtb2JpbGUiOiI5ODExMjIzMzg4IiwiaWF0IjoxNzIxNjMzNjk4LCJleHAiOjE3MjI5Mjk2OTh9.vGUmEaT2fy7chgho3Cd-fGF9u1q7T0vwtsujXyTjPjE',
      },
    );

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      _newsList = data.map((item) => News.fromJson(item)).toList();
      notifyListeners();
    } else {
      throw Exception('Failed to load news');
    }
  }
}
