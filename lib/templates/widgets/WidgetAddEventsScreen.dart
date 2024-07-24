import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../routes/providers/AddneweventsProvider.dart';

class WidgetAddEventsScreen extends StatefulWidget {
  const WidgetAddEventsScreen({super.key});
  static const String path = '/add/add-events';
  static const String name = 'Add Events';
  static const String category = 'Widgets';
  static const IconData icon = Icons.info_rounded;

  @override
  State<WidgetAddEventsScreen> createState() => _WidgetAddEventsScreenState();
}

class _WidgetAddEventsScreenState extends State<WidgetAddEventsScreen> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AddneweventsProvider>(context);

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
              controller: dateController,
              decoration: InputDecoration(
                hintText: 'Enter date',
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
              readOnly: true,
              onTap: () async {
                DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1900),
                  lastDate: DateTime.now(),
                );
                if (pickedDate != null) {
                  String formattedDate = "${pickedDate.year}-${pickedDate.month.toString().padLeft(2, '0')}-${pickedDate.day.toString().padLeft(2, '0')}";
                  dateController.text = formattedDate;
                  provider.date = pickedDate;
                }
              },
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
              child: Text('Add Event'),
            ),
          ],
        ),
      ),
    );
  }
}
