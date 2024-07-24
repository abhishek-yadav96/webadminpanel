import 'package:dashboard/routes/providers/AddCropActionProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WidgetAddNewCorpActionScreen extends StatefulWidget {
  const WidgetAddNewCorpActionScreen({super.key});
  static const String path = '/add/corp-action';
  static const String name = 'Add new Corp. Action';
  static const String category = 'Widgets';
  static const IconData icon = Icons.badge_rounded;

  @override
  State<WidgetAddNewCorpActionScreen> createState() => _WidgetAddNewCorpActionScreenState();
}

class _WidgetAddNewCorpActionScreenState extends State<WidgetAddNewCorpActionScreen> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AddCropActionProvider>(context);

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
                hintText: 'Enter date of birth',
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
              child: Text('Add Action'),
            ),
          ],
        ),
      ),
    );
  }
}
