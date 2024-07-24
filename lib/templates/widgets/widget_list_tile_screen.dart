import 'package:dashboard/routes/providers/UploadnewIndustryProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../../core/themes/app_theme.dart';


class WidgetIndustryInfouploadScreen extends StatelessWidget {
  const WidgetIndustryInfouploadScreen({super.key});

  static const String path = '/upload/new-industry';
  static const String name = 'Industry Info upload';
  static const String category = 'Widgets';
  static const IconData icon = Icons.list_rounded;

  @override
  Widget build(BuildContext context) {
    final newsUploadProvider = Provider.of<UploadnewIndustryProvider>(context);

    return Scaffold(
      body: SingleChildScrollView(
        padding: AppTheme.geometry.medium,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 150, 10, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Image.asset('assets/images/upload.png', width: 300, height: 50)),
              SizedBox(height: 10),
              Center(
                child: Text(
                  'Upload File',
                  style: TextStyle(color: Colors.black, fontSize: 26, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: Text(
                  'Browse and choose the files you want to upload.',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: FloatingActionButton(
                  onPressed: () => newsUploadProvider.pickXlsxFile(),
                  child: Icon(Icons.add),
                ),
              ),
              const SizedBox(height: 20),
              if (newsUploadProvider.message != null)
                Center(
                  child: Text(
                    newsUploadProvider.message!,
                    style: TextStyle(
                      color: newsUploadProvider.message == 'Industry data uploaded successfully'
                          ? Colors.green
                          : Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}