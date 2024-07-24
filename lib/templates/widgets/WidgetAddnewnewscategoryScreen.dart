import 'package:dashboard/routes/providers/AddNewsCategoryNameProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WidgetAddnewnewscategoryScreen extends StatefulWidget {
  const WidgetAddnewnewscategoryScreen({super.key});

  static const String path = '/add/Add-new-news-category';
  static const String name = 'Add new news category';
  static const String category = 'Widgets';
  static const IconData icon = Icons.info_rounded;

  @override
  State<WidgetAddnewnewscategoryScreen> createState() => _WidgetPopoverScreenState();
}

class _WidgetPopoverScreenState extends State<WidgetAddnewnewscategoryScreen> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AddNewsCategoryProvider>(context);

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
            ElevatedButton(
              onPressed: () {
                provider.title = titleController.text;
                provider.addCorporateAction().then((_) {
                  if (provider.message != null) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(provider.message!)));
                  } else if (provider.error != null) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(provider.error!)));
                  }
                });
              },
              child: Text('Add News Category'),
            ),
          ],
        ),
      ),
    );
  }
}
