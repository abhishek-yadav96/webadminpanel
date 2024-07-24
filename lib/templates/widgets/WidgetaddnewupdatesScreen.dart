import 'package:dashboard/core/themes/app_theme.dart';
import 'package:dashboard/core/widgets/table_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../routes/providers/AddNewUpdateProvider.dart';

class WidgetaddnewupdatesScreen extends StatefulWidget {
  const WidgetaddnewupdatesScreen({super.key});


  static const String path = '/add/new-update';
  static const String name = 'Add Update';
  static const String category = 'Widgets';
  static const IconData icon = Icons.info_rounded;




  @override
  State<WidgetaddnewupdatesScreen> createState() => _WidgetaddnewupdatesScreenState();
}

class _WidgetaddnewupdatesScreenState extends State<WidgetaddnewupdatesScreen> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController newsIdController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<Addnewupdateprovider>(context);

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
                provider.addCorporateAction().then((_) {
                  if (provider.message != null) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(provider.message!)));
                  } else if (provider.error != null) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(provider.error!)));
                  }
                });
              },
              child: Text('Add Update new'),
            ),
          ],
        ),
      ),
    );
  }
}
