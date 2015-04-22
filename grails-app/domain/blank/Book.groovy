package blank

class Book {

    String title
    String author
    static constraints = {
        title blank:false
    }
}
