import 'package:flutter/foundation.dart';

/// Model for a recipe.
/// Each recipe has a Ingredients list and Instructions class


enum ServingType {
  Grams, Ounce, Tablespoon, Teaspoon, Cup, Pint, Quart, Gallon, Milliliters, Liters, None, Pounds
}

class Ingredient {
  String name;
  ServingType servingType;
  double servingSize;
  double numServings;
  int calories;
  int carbs;
  int fats;
  int protein;
  bool hasMicronutrients;

  Ingredient({@required String name}) {
    this.name = name;
    this.servingType = ServingType.None;
    this.servingSize = 0.0;
    this.numServings = 0.0;
    this.calories = 0;
    this.protein = 0;
    this.fats = 0;
    this.hasMicronutrients = false;
  }

  // Getters 
  String get getName => this.name;
  String getServingType() {
    ServingType currType = this.servingType;
    switch (currType) {
      case ServingType.Cup: return "c";
      case ServingType.Gallon: return "gal";
      case ServingType.Grams: return "g";
      case ServingType.Liters: return "Liters";
      case ServingType.Milliliters: return "Milliliters";
      case ServingType.Ounce: return "oz";
      case ServingType.Pint: return "pt";
      case ServingType.Quart: return "qt";
      case ServingType.Tablespoon: return "tbsp";
      case ServingType.Teaspoon: return "tsp";
      case ServingType.Pounds: return "lbs";
      default: return "???";
    }
  }


}