import 'dart:convert';
import 'Book.dart';
import 'dart:io';

class BooksRepo{
  late final List<Book> books;

  BooksRepo(){
    final jsonData=File('books_donation/data/catalog_books.json').readAsStringSync();
    final List<dynamic> jsonList= jsonDecode(jsonData);
    books=jsonList.map((json)=>Book.fromJson(json)).toList();
  }

Book getBook(String name) {
  return books.firstWhere((book) => book.title == name);
}

  List<Book> getBooksByPageCount(int pageCount){
    return books.where((book) => book.pageCount >= pageCount).toList();
    }

List<Book> getBooksByCategory(String category){
  return books.where((book)=>book.category.toLowerCase()==category.toLowerCase()).toList();
}

Map<String,int> get getAuthorsBookCount{
return books.fold<Map<String, int>>({}, (map, book) {
  String authorKey = book.authors.join(', ');  
  map[authorKey] = (map[authorKey] ?? 0) + 1;
  return map;
});


// extention BookListextention on List<Book>{
//     List<Book> filterByAuthor(String author){
//         return books.firstWhere((book)=>)
//     }

}

}



void main(){
  BooksRepo b2=new BooksRepo();
  print("the output of the function getBook(String name):");
  print("the testing happen with the title of Specification by Example");
  print(b2.getBook("Specification by Example"));
  print("____________________________________________________________________________");


  print("the output of the function getBooksByPageCount(int pageCount):");
  print("the testing happen with the page count which is equal to 592");
  print(b2.getBooksByPageCount(592));
  print("____________________________________________________________________________");

  
  print("the output of the function getBooksByCategory(String category):");
  print("the testing happen by the page cateogry which is Java");
  print(b2.getBooksByCategory("Java"));
  print("____________________________________________________________________________");

   
  print("the output of the function getAuthorsBookCount:");
  print(b2.getAuthorsBookCount);
  print("____________________________________________________________________________");
}





 
 