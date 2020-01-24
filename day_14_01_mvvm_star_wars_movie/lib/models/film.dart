// To parse this JSON data, do
//
//     final film = filmFromJson(jsonString);

import 'dart:convert';

Film getFilmFromJson(String str) => Film.fromJson(json.decode(str));

class Film {
  String title;
  String openingCrawl;
  String director;
  String producer;
  DateTime releaseDate;

  Film({
    this.title,
    this.openingCrawl,
    this.director,
    this.producer,
    this.releaseDate,
  });

  factory Film.fromJson(Map<String, dynamic> json) => Film(
        title: json["title"],
        openingCrawl: json["opening_crawl"],
        director: json["director"],
        producer: json["producer"],
        releaseDate: DateTime.parse(json["release_date"]),
      );
}
