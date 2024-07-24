import 'package:dashboard/routes/providers/UploadnewStockCompanyProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../core/themes/app_theme.dart';

class WidgetUploadPriceinfoScreen extends StatelessWidget {
  const WidgetUploadPriceinfoScreen({super.key});
  static const String path = "/upload/new-stock";
  static const String name = "upload new-stock";
  static const String category = "Category";
  static const IconData icon = Icons.table_chart;

  @override
  Widget build(BuildContext context) {
    final newsUploadProvider = Provider.of<UploadnewStockCompanyProvider>(context);

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
                      color: newsUploadProvider.message == 'Company data uploaded successfully'
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