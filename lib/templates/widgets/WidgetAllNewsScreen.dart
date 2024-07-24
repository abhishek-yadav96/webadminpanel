import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../routes/providers/AllNewsFilterProvider.dart';

class WidgetAllNewsScreen extends StatefulWidget {
  const WidgetAllNewsScreen({super.key});

  static const String path = "/all/news";
  static const String name = "All News";
  static const String category = "Category";
  static const IconData icon = Icons.table_chart;

  @override
  State<WidgetAllNewsScreen> createState() => _WidgetAllNewsScreenState();
}

class _WidgetAllNewsScreenState extends State<WidgetAllNewsScreen> {
  final TextEditingController _filterController = TextEditingController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<AllnewsfilterProvider>(context, listen: false).fetchNews();
    });
  }

  void _applyFilter() {
    final filterText = _filterController.text.trim();
    Provider.of<AllnewsfilterProvider>(context, listen: false).setFilter(filterText);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _filterController,
                    decoration: InputDecoration(
                      labelText: 'Enter company name',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(width: 8),
                ElevatedButton(
                  onPressed: _applyFilter,
                  child: Text('Filter'),
                ),
              ],
            ),
          ),
          Expanded(
            child: Consumer<AllnewsfilterProvider>(
              builder: (context, newsProvider, child) {
                if (newsProvider.newsList.isEmpty) {
                  return Center(child: CircularProgressIndicator());
                }

                return SingleChildScrollView(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: newsProvider.newsList.map((news) {
                      return
                        Card(
                        elevation: 4,
                        color: Colors.white,
                        margin: EdgeInsets.symmetric(vertical: 8.0),
                        child: ListTile(
                          leading: Image.network(news.newsImage),
                          title: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(text: 'Company Id :${news.companyId}\n', style: TextStyle(fontWeight: FontWeight.bold)),
                                TextSpan(text: 'Id : ${news.id}\n', style: TextStyle(color: Colors.grey)),
                                TextSpan(text: '${news.newsHeading.toString().characters}\n', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),
                          subtitle: Text(news.description),
                          isThreeLine: true,
                        ),
                      );
                    }).toList(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class NewsSearchDelegate extends SearchDelegate<String> {
  @override
  Widget buildSuggestions(BuildContext context) {
    return Consumer<AllnewsfilterProvider>(
      builder: (context, newsProvider, child) {
        final suggestions = newsProvider.newsList
            .where((news) => news.companyName.toLowerCase().contains(query.toLowerCase()))
            .toList();

        return ListView.builder(
          itemCount: suggestions.length,
          itemBuilder: (context, index) {
            final news = suggestions[index];
            return ListTile(
              title: Text(news.newsHeading),
              subtitle: Text(news.companyName),
              onTap: () {
                query = news.companyName;
                showResults(context);
              },
            );
          },
        );
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    Provider.of<AllnewsfilterProvider>(context, listen: false).setFilter(query);
    return Container();
  }

  @override
  Widget buildRecentSuggestions(BuildContext context) {
    return Container();
  }

  @override
  List<Widget>? buildActions(BuildContext context) {
    // TODO: implement buildActions
    throw UnimplementedError();
  }

  @override
  Widget? buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    throw UnimplementedError();
  }
}
