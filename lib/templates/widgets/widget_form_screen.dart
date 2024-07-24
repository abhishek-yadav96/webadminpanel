// import 'package:dashboard/core/widgets/table_widget.dart';
// import 'package:flutter/material.dart';
// import '../../core/themes/app_theme.dart';
//
// class WidgetButtonScreen extends StatelessWidget {
//   const WidgetButtonScreen({super.key});
//
//   static const String path = '/widgets/widget-button';
//   static const String name = 'Button Widget';
//   static const String category = 'Widgets';
//   static const IconData icon = Icons.smart_button_rounded;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         padding: AppTheme.geometry.medium,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               "Button Widget",
//               style: AppTheme.typography.displayMedium,
//             ),
//             AppTheme.spacing.customY(24),
//             TableWidget.basic(
//               context: context,
//               addText: "Add",
//               columnBackgroundColor: AppTheme.colors.primary,
//               title: "News Add",
//               searchProps: SearchProps(
//                 hintText: "Search",
//                 controller: TextEditingController(),
//                 onChanged: (text) {},
//               ),
//               columns: [
//                 ColumnItem(title: "companyName"),
//                 ColumnItem(title: "newsHeading"),
//                 ColumnItem(title: "description"),
//                 ColumnItem(title: "action", isVisible: false),
//               ],
//               data: [
//                 RowItem(rowData: {
//                   "companyName": "Titagarh Rail Systems Ltd",
//                   "newsHeading": "Titagarh Rail Systems secures over ₹1,900 crore order from Indian Railways",
//                   "description": "Kolkata-based company Titagarh Rail Systems has clinched an order worth ₹1,909 crore from Indian Railways for supplying 4,463 wagons, specially designed to transport bulk goods such as coal and ore.The order is expected to be executed in two years.",
//                   "action": [
//                     IconButton(
//                       onPressed: () {},
//                       icon: Icon(
//                         Icons.edit,
//                         color: AppTheme.colors.primary,
//                       ),
//                     ),
//                   ],
//                 }),
//                 RowItem(rowData: {
//                   "companyName": "Titagarh Rail Systems Ltd",
//                   "newsHeading": "Titagarh Rail shares rally 17% in 2 days as BlackRock buys over 9 lakh shares",
//                   "description": "Shares of Kolkata-based private railway stock Titagarh Rail Systems have rallied 17% in the last 2 days on BSE to its new all-time high of Rs 1,896.50 as BlackRock Global Emerging Markets Fund bought over 9.46 lakh shares through block deals on Wednesday.The deal is valued at approximately Rs 153.12 crore and the transaction took place at a price of Rs 1,618 a piece",
//                   "action": [
//                     IconButton(
//                       onPressed: () {},
//                       icon: Icon(
//                         Icons.edit,
//                         color: AppTheme.colors.primary,
//                       ),
//                     ),
//                   ],
//                 }),
//                 RowItem(rowData: {
//                   "companyName": "Tyre manufacturers",
//                   "newsHeading": "Global tyre makers accelerate make-in-India plans, buoyed by govt's PLI scheme",
//                   "description": "Global tyre manufacturers including the likes of Michelin, Bridgestone, and Goodyear are gearing up to invest in India's manufacturing sector, with potential entrants Yokohama and Birla Tyre also eyeing opportunities under a government scheme that links imports to local investment",
//                   "action": [
//                     IconButton(
//                       onPressed: () {},
//                       icon: Icon(
//                         Icons.edit,
//                         color: AppTheme.colors.primary,
//                       ),
//                     ),
//                   ],
//                 }),
//                 RowItem(rowData: {
//                   "companyName": "Kharif Crops",
//                   "newsHeading": "Kharif sowing as of 28 June rises 33% year-on-year to 24 million hectares",
//                   "description": "Area under kharif crops in the 2024-25 crop year (July-June) as of 28 June rose 33% year-on-year to 24.1 million hectares (mh), according to data released by the agriculture ministry on Friday.The increase in acreage is largely due to a rise in cultivation of pulses, oilseeds and cotton.",
//                   "action": [
//                     IconButton(
//                       onPressed: () {},
//                       icon: Icon(
//                         Icons.edit,
//                         color: AppTheme.colors.primary,
//                       ),
//                     ),
//                   ],
//                 }),
//               ],
//             ),
//             AppTheme.spacing.mediumY,
//             TableWidget.card(
//               context: context,
//               addText: "Add",
//               title: "Price upload file",
//               searchProps: SearchProps(
//                 hintText: "Search",
//                 controller: TextEditingController(),
//                 onChanged: (text) {},
//               ),
//               paginationProps: PaginationProps(
//                 totalPage: 100,
//                 currentPage: 1,
//                 onPageChanged: (page) {},
//               ),
//               columns: [
//                 ColumnItem(title: "Source1"),
//                 ColumnItem(title: "Source2"),
//                 ColumnItem(title: "Source3"),
//                 ColumnItem(title: "Visitors", textAlign: TextAlign.center),
//                 ColumnItem(title: "Revenue", textAlign: TextAlign.center),
//                 ColumnItem(title: "Sales", textAlign: TextAlign.center),
//                 ColumnItem(title: "Conversion", textAlign: TextAlign.center),
//                 ColumnItem(title: "action", isVisible: false),
//               ],
//               data: [
//                 RowItem(
//                   rowData: {
//                     "Source1": "Direct",
//                     "Source2": "Direct",
//                     "Source3": "Direct",
//                     "Visitors": 100,
//                     "Revenue": 1000,
//                     "Sales": 10,
//                     "Conversion": "10%",
//                     "action": [
//                       IconButton(
//                         onPressed: () {},
//                         icon: Icon(
//                           Icons.edit,
//                           color: AppTheme.colors.primary,
//                         ),
//                       ),
//                     ],
//                   },
//                 ),
//                 RowItem(rowData: {
//                   "Source1": "Direct",
//                   "Source2": "Direct",
//                   "Source3": "Direct",
//                   "Visitors": 200,
//                   "Revenue": 2000,
//                   "Sales": 20,
//                   "Conversion": "20%",
//                   "action": [
//                     IconButton(
//                       onPressed: () {},
//                       icon: Icon(
//                         Icons.edit,
//                         color: AppTheme.colors.primary,
//                       ),
//                     ),
//                   ],
//                 }),
//                 RowItem(rowData: {
//                   "Source1": "Direct",
//                   "Source2": "Direct",
//                   "Source3": "Direct",
//                   "Visitors": 300,
//                   "Revenue": 3000,
//                   "Sales": 30,
//                   "Conversion": "30%",
//                   "action": [
//                     IconButton(
//                       onPressed: () {},
//                       icon: Icon(
//                         Icons.edit,
//                         color: AppTheme.colors.primary,
//                       ),
//                     ),
//                   ],
//                 }),
//                 RowItem(rowData: {
//                   "Source1": "Direct",
//                   "Source2": "Direct",
//                   "Source3": "Direct",
//                   "Visitors": 400,
//                   "Revenue": 4000,
//                   "Sales": 40,
//                   "Conversion": "40%",
//                   "action": [
//                     IconButton(
//                       onPressed: () {},
//                       icon: Icon(
//                         Icons.edit,
//                         color: AppTheme.colors.primary,
//                       ),
//                     ),
//                   ],
//                 }),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }





import 'package:dashboard/core/widgets/table_widget.dart';
import 'package:flutter/material.dart';
import '../../core/themes/app_theme.dart';

class WidgetFormScreen extends StatefulWidget {
  const WidgetFormScreen({super.key});

  static const String path = "/add-new/books";
  static const String name = "Add new books category";
  static const String category = "Widgets";
  static const IconData icon = Icons.article_rounded;

  @override
  State<WidgetFormScreen> createState() => _WidgetFormScreenState();
}

class _WidgetFormScreenState extends State<WidgetFormScreen> {
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
                  // ColumnItem(title: "Source3"),
                  // ColumnItem(title: "Visitors", textAlign: TextAlign.center),
                  // ColumnItem(title: "Revenue", textAlign: TextAlign.center),
                  // ColumnItem(title: "Sales", textAlign: TextAlign.center),
                  // ColumnItem(title: "Conversion", textAlign: TextAlign.center),
                  // ColumnItem(title: "action", isVisible: false),
                ],
                data: [
                  RowItem(
                    rowData: {
                      "Category Name": "Direct",
                      "Book ImgUrl": "https://m.media-amazon.com/images/I/81hZ4NtXegL._AC_UF1000,1000_QL80_.jpg",
                      // "Source3": "Direct",
                      // "Visitors": 100,
                      // "Revenue": 1000,
                      // "Sales": 10,
                      // "Conversion": "10%",
                      // "action": [
                      //   IconButton(
                      //     onPressed: () {},
                      //     icon: Icon(
                      //       Icons.edit,
                      //       color: AppTheme.colors.primary,
                      //     ),
                      //   ),
                      // ],
                    },
                  ),
                  RowItem(rowData: {
                    "Category Name": "Direct",
                    "Book ImgUrl": "https://m.media-amazon.com/images/I/81hZ4NtXegL._AC_UF1000,1000_QL80_.jpg",
                    // "Source3": "Direct",
                    // "Visitors": 200,
                    // "Revenue": 2000,
                    // "Sales": 20,
                    // "Conversion": "20%",
                    // "action": [
                    //   IconButton(
                    //     onPressed: () {},
                    //     icon: Icon(
                    //       Icons.edit,
                    //       color: AppTheme.colors.primary,
                    //     ),
                    //   ),
                    // ],
                  }),
                  RowItem(rowData: {
                    "Category Name": "Direct",
                    "Book ImgUrl": "https://m.media-amazon.com/images/I/81hZ4NtXegL._AC_UF1000,1000_QL80_.jpg",
                    // "Source3": "Direct",
                    // "Visitors": 300,
                    // "Revenue": 3000,
                    // "Sales": 30,
                    // "Conversion": "30%",
                    // "action": [
                    //   IconButton(
                    //     onPressed: () {},
                    //     icon: Icon(
                    //       Icons.edit,
                    //       color: AppTheme.colors.primary,
                    //     ),
                    //   ),
                    // ],
                  }),
                  RowItem(rowData: {
                    "Category Name": "Direct",
                    "Book ImgUrl": "https://m.media-amazon.com/images/I/81hZ4NtXegL._AC_UF1000,1000_QL80_.jpg",
                    // "Source3": "Direct",
                    // "Visitors": 400,
                    // "Revenue": 4000,
                    // "Sales": 40,
                    // "Conversion": "40%",
                    // "action": [
                    //   IconButton(
                    //     onPressed: () {},
                    //     icon: Icon(
                    //       Icons.edit,
                    //       color: AppTheme.colors.primary,
                    //     ),
                    //   ),
                    // ],
                  }),
                ],
              ),
            ],
          ),
        ),
      );
    }
  }
