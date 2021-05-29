import 'package:flutter/material.dart';

class Product {
  // final String? image;
  // final String? title;
  // final String? description;
  // final int? price;
  // final int? size;
  // final int? id;
  // final Color? color;

  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product({
    this.id,
    this.title,
    this.price,
    this.size,
    this.description,
    this.image,
    this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Office Code1",
      price: 50001,
      size: 15,
      description: dummyText,
      image: "assets/images/bag1.png",
      color: Color(0xFF5CD1E5)),
  Product(
      id: 2,
      title: "Office Code2",
      price: 50002,
      size: 11,
      description: dummyText,
      image: "assets/images/bag2.png",
      color: Color(0xFFE68398)),
  Product(
      id: 3,
      title: "Office Code3",
      price: 50003,
      size: 13,
      description: dummyText,
      image: "assets/images/bag3.png",
      color: Color(0xFFFFBB00)),
  Product(
      id: 4,
      title: "Office Code4",
      price: 50004,
      size: 22,
      description: dummyText,
      image: "assets/images/bag4.png",
      color: Color(0xFFFFE400)),
  Product(
      id: 5,
      title: "Office Code5",
      price: 50005,
      size: 55,
      description: dummyText,
      image: "assets/images/bag5.png",
      color: Color(0xFF6F5400)),
  Product(
      id: 6,
      title: "Office Code6",
      price: 50006,
      size: 32,
      description: dummyText,
      image: "assets/images/bag6.png",
      color: Color(0xFF47C83E)),
];

List<Product> carts = [];

List<Product> likes = [];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry";
