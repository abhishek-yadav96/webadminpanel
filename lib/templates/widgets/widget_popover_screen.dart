import 'package:dashboard/core/widgets/table_widget.dart';
import 'package:flutter/material.dart';
import '../../core/themes/app_theme.dart';

class WidgetPopoverScreen extends StatefulWidget {
  const WidgetPopoverScreen({super.key});

  static const String path = '/add/new-learning-category';
  static const String name = 'Add new learning category';
  static const String category = 'Widgets';
  static const IconData icon = Icons.info_rounded;

  @override
  State<WidgetPopoverScreen> createState() => _WidgetPopoverScreenState();
}

class _WidgetPopoverScreenState extends State<WidgetPopoverScreen> {
  TextEditingController datePickerController = TextEditingController();
  TextEditingController timePickerController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: AppTheme.geometry.medium,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "",
              style: AppTheme.typography.displayMedium,
            ),
            AppTheme.spacing.mediumY,
            TableWidget.card(
              context: context,
              addText: "Add",
              title: "add new learning category",
              searchProps: SearchProps(
                hintText: "Search",
                controller: TextEditingController(),
                onChanged: (text) {},
              ),
              paginationProps: PaginationProps(
                totalPage: 100,
                currentPage: 1,
                onPageChanged: (page) {},
              ),
              columns: [
                ColumnItem(title: "Category Name"),
                // ColumnItem(title: "Book ImgUrl"),
                // ColumnItem(title: "title"),
                // ColumnItem(title: "summary", textAlign: TextAlign.center),
              ],
              data: [
                RowItem(
                  rowData: {
                    "Category Name": "Direct",
                     },
                ),
                RowItem(
                  rowData: {
                    "Category Name": "Direct",
                  },
                ),
                RowItem(
                  rowData: {
                    "Category Name": "Direct",
                  },
                ),
                RowItem(
                  rowData: {
                    "Category Name": "Direct",
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
