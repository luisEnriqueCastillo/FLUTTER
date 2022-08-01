import 'package:flutter/material.dart';
import 'package:meta/meta.dart' show required;

class AlbumModel {
  int? id;
  String? autor;
  String? titulo;
  String? imag;

  AlbumModel({
    @required this.id,
    @required this.autor,
    @required this.titulo,
    @required this.imag,
  });
}

List<AlbumModel> album = [
  AlbumModel(
    id: 1,
    autor: "Post Malone",
    titulo: "Goodbyes",
    imag: "assets/discos/imagen_01.jpg",
  ),
  AlbumModel(
    id: 2,
    autor: "Rich Brian",
    titulo: "Cold",
    imag: "assets/discos/imagen_02.jpg",
  ),
  AlbumModel(
    id: 3,
    autor: "Lauv",
    titulo: "Fuck Im Lonely",
    imag: "assets/discos/imagen_03.jpg",
  )
];
