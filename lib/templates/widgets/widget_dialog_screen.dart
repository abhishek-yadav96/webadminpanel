import 'package:dashboard/core/widgets/table_widget.dart';
import 'package:flutter/material.dart';
import '../../core/themes/app_theme.dart';

class WidgetAddnewbookscontentScreen extends StatefulWidget {
  const WidgetAddnewbookscontentScreen({super.key});

  static const String path = '/add/new-books-content';
  static const String name = 'Add new books content';
  static const String category = 'Widgets';
  static const IconData icon = Icons.notifications_active_rounded;

  @override
  State<WidgetAddnewbookscontentScreen> createState() => _WidgetDialogScreenState();
}

class _WidgetDialogScreenState extends State<WidgetAddnewbookscontentScreen> {
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
              title: "Book upload file",
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
                ColumnItem(title: "Book ImgUrl"),
                ColumnItem(title: "title"),
                ColumnItem(title: "summary", textAlign: TextAlign.center),
              ],
              data: [
                RowItem(
                  rowData: {
                    "Category Name": "Direct",
                    "Book ImgUrl": "https://m.media-amazon.com/images/I/81hZ4NtXegL._AC_UF1000,1000_QL80_.jpg",
                    "title": "One Up On Wall Street: How To Use What You Already Know To Make Money In The Market",
                    "summary": "This book by legendary investor Peter Lynch emphasizes the importance of investing in what you know and adopting a long-term perspective. The principles discussed can be effectively applied to SIPs, encouraging systematic and disciplined investment in mutual funds.",
                  },
                ),
                RowItem(rowData: {
                  "Category Name": "Direct",
                  "Book ImgUrl": "https://m.media-amazon.com/images/I/81hZ4NtXegL._AC_UF1000,1000_QL80_.jpg",
                  "title": "One Up On Wall Street: How To Use What You Already Know To Make Money In The Market",
                  "summary": "This book by legendary investor Peter Lynch emphasizes the importance of investing in what you know and adopting a long-term perspective. The principles discussed can be effectively applied to SIPs, encouraging systematic and disciplined investment in mutual funds.",
                }),
                RowItem(rowData: {
                  "Category Name": "Direct",
                  "Book ImgUrl": "https://m.media-amazon.com/images/I/81hZ4NtXegL._AC_UF1000,1000_QL80_.jpg",
                  "title": "One Up On Wall Street: How To Use What You Already Know To Make Money In The Market",
                  "summary": "This book by legendary investor Peter Lynch emphasizes the importance of investing in what you know and adopting a long-term perspective. The principles discussed can be effectively applied to SIPs, encouraging systematic and disciplined investment in mutual funds.",
                }),
                RowItem(rowData: {
                  "Category Name": "Direct",
                  "Book ImgUrl": "https://m.media-amazon.com/images/I/81hZ4NtXegL._AC_UF1000,1000_QL80_.jpg",
                  "title": "One Up On Wall Street: How To Use What You Already Know To Make Money In The Market",
                  "summary": "This book by legendary investor Peter Lynch emphasizes the importance of investing in what you know and adopting a long-term perspective. The principles discussed can be effectively applied to SIPs, encouraging systematic and disciplined investment in mutual funds.",
                }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
