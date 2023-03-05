class Category {
  final int categoryID;
  final String title;

  Category({required this.categoryID, required this.title});
}

List<Category> demo_categories = [
  Category(title: 'All', categoryID: 1),
  Category(title: 'New', categoryID: 2),
  Category(title: 'Most viewed', categoryID: 3),
  Category(title: 'Recommended', categoryID: 4),
];
