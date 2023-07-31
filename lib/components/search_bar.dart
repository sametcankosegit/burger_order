import 'package:flutter/material.dart';

class CustomSearchDelegate extends SearchDelegate {
  List<String> searchTerms = [
    'WHOPPER',
    'WHOPPER WITH CHEESE',
    'WHOPPER jr',
    'BK SINGLES BLACK PEPPER',
    'CHICKEN ROYALE',
    'FRENCH CHICKEN',
    'SPICY TENDERCRISP',
  ];
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var burger in searchTerms) {
      if (burger.toLowerCase().contains(
            query.toLowerCase(),
          )) {
        matchQuery.add(burger);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var burger in searchTerms) {
      if (burger.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(burger);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
}
