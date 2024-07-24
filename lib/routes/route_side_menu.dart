import 'package:dashboard/templates/widgets/WidgetAddEventsScreen.dart';
import 'package:dashboard/templates/widgets/WidgetAddnewnewscategoryScreen.dart';
import 'package:dashboard/templates/widgets/WidgetAllNewsScreen.dart';
import 'package:dashboard/templates/widgets/WidgetaddinsightsScreen.dart';
import 'package:dashboard/templates/widgets/WidgetaddnewupdatesScreen.dart';
import 'package:flutter/material.dart';
import 'items/route_item.dart';
import '../templates/widgets/widget_badge_screen.dart';
import '../templates/widgets/widget_button_screen.dart';
import '../templates/widgets/widget_carausel_screen.dart';
import '../templates/widgets/widget_list_tile_screen.dart';
import '../templates/widgets/widget_table_screen.dart';

List<RouteItem> routesSideMenu = [
  RouteItem(
    path: "/category",
    name: "Category",
    icon: Icons.widgets,
    category: "Category",
    page: Container(),
    subRoutes: [
      const RouteItem(
        path: WidgetUploadNewsScreen.path,
        name: WidgetUploadNewsScreen.name,
        category: WidgetUploadNewsScreen.category,
        icon: WidgetUploadNewsScreen.icon,
        page: WidgetUploadNewsScreen(),
      ),
      const RouteItem(
        path: WidgetAllNewsScreen.path,
        name: WidgetAllNewsScreen.name,
        category: WidgetAllNewsScreen.category,
        icon: WidgetAllNewsScreen.icon,
        page: WidgetAllNewsScreen(),
      ),
      const RouteItem(
        path: WidgetUploadPriceinfoScreen.path,
        name: WidgetUploadPriceinfoScreen.name,
        icon: WidgetUploadPriceinfoScreen.icon,
        page: WidgetUploadPriceinfoScreen(),
      ),
      const RouteItem(
        path: WidgetIndustryInfouploadScreen.path,
        name: WidgetIndustryInfouploadScreen.name,
        icon: WidgetIndustryInfouploadScreen.icon,
        page: WidgetIndustryInfouploadScreen(),
      ),
      const RouteItem(
        path: WidgetUploadStockScreen.path,
        name: WidgetUploadStockScreen.name,
        icon: WidgetUploadStockScreen.icon,
        page: WidgetUploadStockScreen(),
      ),
      const RouteItem(
        path: WidgetAddNewCorpActionScreen.path,
        name: WidgetAddNewCorpActionScreen.name,
        icon: WidgetAddNewCorpActionScreen.icon,
        page: WidgetAddNewCorpActionScreen(),
      ),
      // const RouteItem(
      //   path: WidgetAddnewnewscategoryScreen.path,
      //   name: WidgetAddnewnewscategoryScreen.name,
      //   icon: WidgetAddnewnewscategoryScreen.icon,
      //   page: WidgetAddnewnewscategoryScreen(),
      // ),
      const RouteItem(
        path: WidgetAddEventsScreen.path,
        name: WidgetAddEventsScreen.name,
        icon: WidgetAddEventsScreen.icon,
        page: WidgetAddEventsScreen(),
      ),
      const RouteItem(
        path: WidgetAddInsightsScreen.path,
        name: WidgetAddInsightsScreen.name,
        icon: WidgetAddInsightsScreen.icon,
        page: WidgetAddInsightsScreen(),
      ),
      const RouteItem(
        path: WidgetaddnewupdatesScreen.path,
        name: WidgetaddnewupdatesScreen.name,
        icon: WidgetaddnewupdatesScreen.icon,
        page: WidgetaddnewupdatesScreen(),
      ),
    ],
  ),
];
