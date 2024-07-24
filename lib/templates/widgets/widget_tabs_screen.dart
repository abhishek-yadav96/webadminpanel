import 'package:dashboard/core/themes/app_theme.dart';
import 'package:dashboard/core/widgets/table_widget.dart';
import 'package:flutter/material.dart';

class WidgetTabsScreen extends StatefulWidget {
  const WidgetTabsScreen({super.key});

  static const String path = '/add/new-learning-Topic';
  static const String name = 'Add new learning Topic';
  static const String category = 'Widgets';
  static const IconData icon = Icons.tab_rounded;

  @override
  State<WidgetTabsScreen> createState() => _WidgetTabsScreenState();
}

class _WidgetTabsScreenState extends State<WidgetTabsScreen> {
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
              title: "add new learning Topic",
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
                ColumnItem(title: "title"),
                ColumnItem(title: "content", textAlign: TextAlign.center),
              ],
              data: [
                RowItem(
                  rowData: {
                    "Category Name": "Direct",
                    "title": "One Up On Wall Street: How To Use What You Already Know To Make Money In The Market",
                    "content": "Futures markets facilitate trading in commodities, financial instruments, and indices. They provide liquidity and price discovery."
                  },
                ),
                RowItem(
                  rowData: {
                    "Category Name": "Direct",
                    "title": "One Up On Wall Street: How To Use What You Already Know To Make Money In The Market",
                    "content": "Futures markets facilitate trading in commodities, financial instruments, and indices. They provide liquidity and price discovery."
                  },
                ),
                RowItem(
                  rowData: {
                    "Category Name": "Direct",
                    "title": "One Up On Wall Street: How To Use What You Already Know To Make Money In The Market",
                    "content": "Futures markets facilitate trading in commodities, financial instruments, and indices. They provide liquidity and price discovery."
                  },
                ),
                RowItem(
                  rowData: {
                    "Category Name": "Direct",
                    "title": "One Up On Wall Street: How To Use What You Already Know To Make Money In The Market",
                    "content": "Futures markets facilitate trading in commodities, financial instruments, and indices. They provide liquidity and price discovery."
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
