import 'package:dashboard/routes/providers/NewsUploadProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../core/themes/app_theme.dart';

class WidgetUploadNewsScreen extends StatelessWidget {
  const WidgetUploadNewsScreen({super.key});

  static const String path = "/upload/news";
  static const String name = "Upload News";
  static const String category = "Category";
  static const IconData icon = Icons.table_chart;

  @override
  Widget build(BuildContext context) {
    final newsUploadProvider = Provider.of<NewsUploadProvider>(context);

    return Scaffold(
      body: SingleChildScrollView(
        padding: AppTheme.geometry.medium,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 150, 10, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  'assets/images/upload.png',
                  width: 300,
                  height: 50,
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: Text(
                  'Upload File',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: Text(
                  'Browse and choose the files you want to upload.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(height: 10),
              if (newsUploadProvider.isUploading) // Corrected this line
                Center(child: CircularProgressIndicator()),
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
                      color: newsUploadProvider.message == 'News data uploaded successfully'
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
