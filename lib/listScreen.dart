import 'package:flutter/material.dart';
import 'package:listscreen/book.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  List Books = [
    Book(
        bookname: "Master Dart",
        cover:
            'https://m.media-amazon.com/images/I/71j8OpOqA0L._AC_UF1000,1000_QL80_.jpg'),
    Book(
        bookname: "Mobile Deep Learning with TensorFlow Lite",
        cover: 'https://images.thuvienpdf.com/yGFnmqHUVK.webp'),
    Book(
        bookname: "Problem Solving and Programming",
        cover:
            'https://m.media-amazon.com/images/I/51cWL7EB++L._AC_UF894,1000_QL80_.jpg'),
    Book(
        bookname: "Prototyping of User Interfaces for Mobile Applications",
        cover:
            'https://media.springernature.com/full/springer-static/cover-hires/book/978-3-319-53210-3'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (Text("book catalog"))),
      body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // แสดง 3 คอลัมน์
            ),
            itemCount: Books.length,
            itemBuilder: (BuildContext context, int index) {
                return   Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.network(Books[index].cover, width: 200, height: 150,),
                      Text(Books[index].bookname ,textAlign: TextAlign.center),
                    ]),
                );
            }),
    );
  }
}
