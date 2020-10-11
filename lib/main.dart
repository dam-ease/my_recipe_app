import 'package:flutter/material.dart';
import 'package:my_recipe_app/screens/search_recipe.dart';
//import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyRecipeApp());
}

class MyRecipeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RecipeSearch(),
    );
  }
}
