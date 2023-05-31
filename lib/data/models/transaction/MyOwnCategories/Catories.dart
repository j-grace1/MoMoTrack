class Category {
  final String name;
  bool isSelected;

  Category({required this.name, this.isSelected = false});
}

class CategoryBottomSheetData {
  final List<Category> defaultCategories;
  final List<Category> customCategories;

  CategoryBottomSheetData(
      {required this.defaultCategories, required this.customCategories});
}
