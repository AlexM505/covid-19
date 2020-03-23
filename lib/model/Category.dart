class Category{
  final String categoryName;
  final String imagePath;

  final Content_Category content;
  Category({this.categoryName, this.imagePath,this.content});
}

class Content_Category{
  final String title;
  final String content;
  final String imgPath;
  final bool imgLocal;

  Content_Category({this.title,this.content,this.imgPath,this.imgLocal});
}