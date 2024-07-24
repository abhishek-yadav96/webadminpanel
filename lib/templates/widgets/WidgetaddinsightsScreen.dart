import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../routes/providers/AddInsightsProvider.dart';

class WidgetAddInsightsScreen extends StatefulWidget {
  const WidgetAddInsightsScreen({super.key});

  static const String path = '/add/add-insights';
  static const String name = 'Add Insights';
  static const String category = 'Widgets';
  static const IconData icon = Icons.info_rounded;

  @override
  State<WidgetAddInsightsScreen> createState() => _WidgetAddInsightsScreenState();
}

class _WidgetAddInsightsScreenState extends State<WidgetAddInsightsScreen> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController newsIdController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AddNewInsightsProvider>(context);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: titleController,
              decoration: InputDecoration(
                hintText: 'Title',
                border: OutlineInputBorder(),
                hintStyle: TextStyle(fontSize: 12, color: Colors.deepPurple),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurple),
                  borderRadius: BorderRadius.circular(28),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurple),
                  borderRadius: BorderRadius.circular(28),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: newsIdController,
              decoration: InputDecoration(
                hintText: 'News Id',
                border: OutlineInputBorder(),
                hintStyle: TextStyle(fontSize: 12, color: Colors.deepPurple),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurple),
                  borderRadius: BorderRadius.circular(28),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurple),
                  borderRadius: BorderRadius.circular(28),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: descriptionController,
              decoration: InputDecoration(
                hintText: 'Description',
                border: OutlineInputBorder(),
                hintStyle: TextStyle(fontSize: 12, color: Colors.deepPurple),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurple),
                  borderRadius: BorderRadius.circular(28),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurple),
                  borderRadius: BorderRadius.circular(28),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                provider.title = titleController.text;
                provider.description = descriptionController.text;
                provider.newsId = newsIdController.text;
                provider.addCorporateAction().then((_) {
                  if (provider.message != null) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(provider.message!)));
                  } else if (provider.error != null) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(provider.error!)));
                  }
                });
              },
              child: Text('Add Insights'),
            ),
          ],
        ),
      ),
    );
  }
}
