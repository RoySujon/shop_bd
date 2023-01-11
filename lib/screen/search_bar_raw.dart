import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SearchBarRaw extends StatefulWidget {
  const SearchBarRaw({super.key});

  @override
  State<SearchBarRaw> createState() => _SearchBarRawState();
}

class _SearchBarRawState extends State<SearchBarRaw> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: MuySearchDelegate());
            },
          )
        ],
      ),
      body: Center(child: Text('GOUTOM')),
    );
  }
}

class MuySearchDelegate extends SearchDelegate {
  static List<String> searchResults = [
    'Dhaka',
    'Mymensingh',
    'Chittagong',
    'Rajshahi',
    'Rangpur',
    'Khulna',
    'Barisal',
    'Sylhet'
  ];
  @override
  List<Widget>? buildActions(BuildContext context) => [
        IconButton(
            onPressed: () {
              query = '';
            },
            icon: Icon(Icons.clear))
      ];

  @override
  Widget? buildLeading(BuildContext context) => IconButton(
      onPressed: () => close(context, null), icon: Icon(Icons.arrow_back));

  @override
  Widget buildResults(BuildContext context) => Center(
        child: Text(query),
      );

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    List<String> suggestions = searchResults.where((searchResult) {
      final result = searchResult.toLowerCase();
      final input = query;
      return result.contains(input);
    }).toList();
    return ListView.builder(
      itemBuilder: (context, index) {
        // final  suggestions

        final suggestion = suggestions[index];
        return ListTile(
          title: Text(suggestion),
          onTap: () {
            query = suggestion;
          },
        );
      },
      itemCount: suggestions.length,
    );
  }
}
