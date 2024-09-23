class Book{
  late final String title;
  final List<String> authors;
  final int pageCount;
  final String category;

 Book({
    required this.title,
    required this.authors,
    required this.pageCount,
    required this.category,
  });

  
  @override
  String toString() {
    // TODO: implement toString
    String book="TitleOfBook: $title Authors:$authors PageCount:$pageCount Caregory:$category";
    return book;
  }

  
  Map<String, dynamic> toJson() => {
        'title': title,
        'authors': authors,
        'pageCount': pageCount,
        'category': category,
      };

  Book.fromJson(Map<String, dynamic> json):
    title = json['title'] as String,
    authors = (json['authors'] as List).cast<String>(),
    pageCount = json['pageCount'] as int,
    category = json['category'] as String;
}



