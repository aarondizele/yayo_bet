import 'package:flutter/material.dart';
import 'models/category.dart';

class CategoryMenuPage extends StatelessWidget {
  final Category currentCategory;
  final ValueChanged<Category> onCategoryTap;
  final List<Category> _categories = Category.values;

  const CategoryMenuPage({
    Key key,
    @required this.currentCategory,
    @required this.onCategoryTap,
  })  : assert(currentCategory != null),
        assert(onCategoryTap != null);

  Widget _buildCategory(Category category, BuildContext context) {
    final categoryString =
        category.toString().replaceAll('Category.', '').toUpperCase();
    final ThemeData theme = Theme.of(context);

    return GestureDetector(
        onTap: () => onCategoryTap(category),
        child: category == currentCategory
            ? Container(
                child: Text(
                  categoryString,
                  style: theme.textTheme.body2.copyWith(color: Colors.cyan),
                ),
              )
            : Container(
                child: Text(categoryString, style: theme.textTheme.body2)));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.only(top: 40.0),
        color: Colors.black12,
        child: ListView(
          children: _categories.map((Category c) => _buildCategory(c, context)).toList()
        ),
      ),
    );
  }
}
