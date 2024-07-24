import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:http/http.dart' as http;

class UploadnewcompanywithoutstockinfoProvider with ChangeNotifier {
  String? message;
  final String apiUrl = 'http://ec2-65-0-8-136.ap-south-1.compute.amazonaws.com/api/v1/admin/upload/new/company-without-stock-info';
  final String token = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJfaWQiOiI2NjdkNTgyZGNjNmI5MzU2NGNkNjFiMTUiLCJtb2JpbGUiOiI5ODExMjIzMzg4IiwiaWF0IjoxNzIxNjMzNjk4LCJleHAiOjE3MjI5Mjk2OTh9.vGUmEaT2fy7chgho3Cd-fGF9u1q7T0vwtsujXyTjPjE';

  Future<void> pickXlsxFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['xlsx'],
    );

    if (result != null && result.files.single.bytes != null) {
      Uint8List fileBytes = result.files.single.bytes!;
      String fileName = result.files.single.name;
      bool uploadSuccess = await _uploadXlsxFile(fileBytes, fileName);
      if (uploadSuccess) {
        message = 'Company data uploaded successfully';
      } else {
        message = 'Upload Failed';
      }
    } else {
      message = 'Excel file is required';
    }
    notifyListeners();
  }

  Future<bool> _uploadXlsxFile(Uint8List fileBytes, String fileName) async {
    try {
      var request = http.MultipartRequest('POST', Uri.parse(apiUrl));
      request.headers['Authorization'] = 'Bearer $token';
      request.files.add(http.MultipartFile.fromBytes('company', fileBytes, filename: fileName));
      var response = await request.send();
      if (response.statusCode == 200) {
        print("resposne:${response.statusCode}");
        return true;
      } else {
        final responseBody = await response.stream.bytesToString();
        print('Response from server: $responseBody');
        return false;
      }
    } catch (e) {
      print(e);
      return false;
    }
  }
}
