class Page {
  final int page;
  final int per_page;
  final int total;
  final int total_pages;
  final Author author;
  final List<Data> data;

  Page(
      {this.page,
      this.per_page,
      this.total,
      this.total_pages,
      this.author,
      this.data});

  factory Page.fromJson(Map<String, dynamic> parsedJson) {
    var list = parsedJson['data'] as List;
    List<Data> dataList = list.map((i) => Data.fromJson(i)).toList();

    return new Page(
      page: parsedJson['page'],
      per_page: parsedJson['per_page'],
      total: parsedJson['total'],
      total_pages: parsedJson['total_pages'],
      author: Author.fromJson(parsedJson['author']),
      data: dataList,
    );
  }
}

class Data {
  final int id;
  final String first_name;
  final String last_name;
  final String avatar;
  final List<Images> images;

  Data({this.id, this.first_name, this.last_name, this.avatar, this.images});

  factory Data.fromJson(Map<String, dynamic> parsedJson) {
    var list = parsedJson['images'] as List;
    List<Images> imageList = list.map((i) => Images.fromJson(i)).toList();

    return new Data(
      id: parsedJson['id'],
      first_name: parsedJson['first_name'],
      last_name: parsedJson['last_name'],
      avatar: parsedJson['avatar'],
      images: imageList,
    );
  }
}

class Images {
  final int id;
  final String imageName;

  Images({
    this.id,
    this.imageName,
  });

  factory Images.fromJson(Map<String, dynamic> parsedJson) {
    return new Images(
      id: parsedJson['id'],
      imageName: parsedJson['imageName'],
    );
  }
}

class Author {
  final String first_name;
  final String last_name;

  Author({
    this.first_name,
    this.last_name,
  });

  factory Author.fromJson(Map<String, dynamic> parsedJson) {
    return new Author(
      first_name: parsedJson['first_name'],
      last_name: parsedJson['last_name'],
    );
  }

}
