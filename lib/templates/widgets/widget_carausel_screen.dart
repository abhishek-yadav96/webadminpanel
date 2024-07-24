import 'package:dashboard/routes/providers/UploadnewcompanywithoutstockinfoProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import '../../core/themes/app_theme.dart';

class WidgetUploadStockScreen extends StatelessWidget {
  const WidgetUploadStockScreen({super.key});

  static const String path = '/add/upload-new-company-without-stock-info';
  static const String name = 'Upload Stock';
  static const String category = 'Widgets';
  static const IconData icon = Icons.slideshow_rounded;

  static const List<String> bannerData = [
    'assets/images/banner.png',
    'assets/images/banner.png',
    'assets/images/banner.png',
    'assets/images/banner.png',
  ];
  @override
  Widget build(BuildContext context) {
    final newsUploadProvider = Provider.of<UploadnewcompanywithoutstockinfoProvider>(context);

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