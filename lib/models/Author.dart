import 'dart:convert';

List<Author> authorFromJson(String str) => List<Author>.from(json.decode(str).map((x) => Author.fromJson(x)));

String authorToJson(List<Author> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Author {
  Author({
    required this.author,
    required this.downloadUrl,
  });

  String author;
  String downloadUrl;

  factory Author.fromJson(Map<String, dynamic> json) => Author(
    author: json["author"],
    downloadUrl: json["download_url"],
  );

  Map<String, dynamic> toJson() => {
    "author": author,
    "download_url": downloadUrl,
  };

  @override
  String toString() {
    return 'Author{author: $author, downloadUrl: $downloadUrl}';
  }

}
