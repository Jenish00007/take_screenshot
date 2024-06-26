import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class BoxingImages extends StatefulWidget {
  const BoxingImages({Key? key}) : super(key: key);

  @override
  State<BoxingImages> createState() => _BoxingImagesState();
}

class _BoxingImagesState extends State<BoxingImages> {
  List<String> imgUrls = [
    "https://images.unsplash.com/photo-1552072092-7f9b8d63efcb",
    "https://images.unsplash.com/flagged/photo-1574008526523-3f48a9f170f0",
    "https://images.unsplash.com/photo-1591110274329-78b8d68c63b0",
    "https://images.unsplash.com/photo-1564767609342-620cb19b2352",
    "https://images.unsplash.com/photo-1563986768609-322f06ff9c6f",
    "https://images.unsplash.com/photo-1552850986651-0220289eda5f",
    "https://images.unsplash.com/photo-1601004890684-466a9208eafd",
    "https://images.unsplash.com/photo-1631131235293-0b1e1d49494a",
    "https://images.unsplash.com/photo-1601835846427-67b1d6e2f93f"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider.builder(
        itemCount: imgUrls.length,
        itemBuilder: (context, index, pageViewIndex) {
          return Container(
            child: Image.network(imgUrls.elementAt(index)),
          );
        },
        options: CarouselOptions(autoPlay: true),
      ),
    );
  }
}
