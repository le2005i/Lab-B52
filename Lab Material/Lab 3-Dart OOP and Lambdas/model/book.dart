class Book {
  String _name;
  String _author;
  int _year;

  Book(this._author,this._name,this._year);
 
  @override
  String toString() {
    String BookInfo='Name:$_name Author:$_author Year:$_year';
    return BookInfo;
  }
}

  class PaperBook extends Book{
    String _publisher;
    String _isbn;

    PaperBook(String name,String authour,int year,this._isbn,this._publisher):super(name,authour,year);

    @override
  String toString() => '${super.toString()}. Publisher:$_isbn ISBN:$_isbn' ;
  }


class AuidoBook extends Book{
    int _size;
    int _length;
    String _artistName;

  AuidoBook(String name,String authour,int year,this._size,this._length,this._artistName):super(name,authour,year);

   @override
  String toString() => '${super.toString()}. Size:$_size Length:$_length AtristName:$_artistName' ;

}

void main(){
  List auidobook =[];
  List paperbook = [];
  paperbook.add(PaperBook('Android', 'Baaji', '1/2/2019', '100-11-13', 'Sanford'));
  auidobook.add(AuidoBook("How to get Rich", 'Ali', , _size, _length, _artistName))
}