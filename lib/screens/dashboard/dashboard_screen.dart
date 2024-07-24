import 'package:dashboard/core/themes/app_theme.dart';
import 'package:dashboard/core/utils/app_util.dart';
import 'package:dashboard/core/widgets/card_widget.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});
  static const String path = '/';
  static const String name = "Dashboard";
  static const IconData icon = Icons.dashboard_rounded;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: AppTheme.geometry.medium,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome",
              style: AppTheme.typography.displayMedium,
            ),
            AppTheme.spacing.customY(24),
            Builder(builder: (context) {
              if (isLargeScreen(context)) {
                return Row(
                  children: [
                    Expanded(
                      child: CardWidget.basic(
                        title: "News Card",
                        placeholder: const AssetImage("assets/images/placeholder.png"),
                        image: const AssetImage("assets/images/banner.png"),
                        children: [
                          const Text("This is a News card"),
                          const Text("This is a News card"),
                          const Text("This is a News card"),
                        ],
                      ),
                    ),
                    AppTheme.spacing.smallX,
                    Expanded(
                      child: CardWidget.basic(
                        title: "News Card",
                        placeholder: const AssetImage("assets/images/placeholder.png"),
                        image: const AssetImage("assets/images/banner.png"),
                        children: [
                          const Text("This is a News card"),
                          const Text("This is a News card"),
                          const Text("This is a News card"),
                        ],
                      ),
                    ),
                  ],
                );
              } else {
                return Column(
                  children: [
                    CardWidget.basic(
                      title: "News Card",
                      placeholder: const AssetImage("assets/images/placeholder.png"),
                      image: const AssetImage("assets/images/banner.png"),
                      children: [
                        const Text("This is a News card"),
                        const Text("This is a News card"),
                        const Text("This is a News card"),
                      ],
                    ),
                    AppTheme.spacing.smallY,
                    CardWidget.basic(
                      title: "News Card",
                      placeholder: const AssetImage("assets/images/placeholder.png"),
                      image: const AssetImage("assets/images/banner.png"),
                      children: [
                        const Text("This is a News card"),
                        const Text("This is a News card"),
                        const Text("This is a News card"),
                      ],
                    ),
                  ],
                );
              }
            }),
            AppTheme.spacing.mediumY,
            CardWidget.expansion(
              title: "news Card",
              initiallyExpanded: true,
              children: [
                const Text("This is a news card"),
                const Text("This is a news card"),
                const Text("This is a news card"),
              ],
            ),
            AppTheme.spacing.customY(24),
            CardWidget.basic(
              title: "News Card",
              children: [
                const Text("This is a news card"),
                const Text("This is a news card"),
                const Text("This is a news card"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}