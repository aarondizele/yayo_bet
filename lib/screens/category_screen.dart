import 'package:flutter/material.dart';
import '../models/category.dart';

class CategoryScreen extends StatefulWidget {
  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  Category _currentCategory = Category.football;
  final List<Category> _categories = Category.values;

  void onCategoryTap(Category category) {
    setState(() {
      _currentCategory = category;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black26,
          automaticallyImplyLeading: false,
          brightness: Brightness.dark,
          title: Text('Catégories'),
          elevation: 0.0,
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.only(top: 20.0),
            color: Colors.black26,
            child: ListView(
                children: _categories
                    .map((Category c) => _buildCategory(c, context))
                    .toList()),
          ),
        ));
  }

  Widget _buildCategory(Category category, BuildContext context) {
    String categoryString;
    final categoryTransform =
        category.toString().replaceAll('Category.', '').toUpperCase();

    if (categoryTransform == 'FOOTBALL_AMERICAIN') {
      categoryString = 'Football  Américain'.toUpperCase();
    } else if (categoryTransform == 'FOOTBALL_AUSTRALIEN') {
      categoryString = 'Football  Australien'.toUpperCase();
    } else if (categoryTransform == 'FLECHETTES') {
      categoryString = 'Fléchettes'.toUpperCase();
    } else if (categoryTransform == 'BEACH_VOLLEY') {
      categoryString = 'Beach  Volley'.toUpperCase();
    } else {
      categoryString = categoryTransform;
    }

    final ThemeData theme = Theme.of(context);

    return GestureDetector(
        onTap: () => onCategoryTap(category),
        child: category == _currentCategory
            ? Column(
                children: <Widget>[
                  SizedBox(height: 16.0),
                  Text(
                    categoryString,
                    style: theme.textTheme.body2.copyWith(color: Colors.tealAccent),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 14.0),
                  Container(
                    width: 140.0,
                    height: 2.0,
                    color: Colors.tealAccent,
                  ),
                ],
              )
            : Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  categoryString,
                  style: theme.textTheme.body2,
                  textAlign: TextAlign.center,
                ),
              ));
  }
}
