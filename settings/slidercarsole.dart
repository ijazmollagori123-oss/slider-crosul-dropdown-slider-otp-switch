import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_state.dart';
import 'package:taskrow/assets%20image.dart';
class slidercros extends StatefulWidget {
  const slidercros({super.key});

  @override
  State<slidercros> createState() => _slidercrosState();
}

class _slidercrosState extends State<slidercros> {
  List<String> imageList=[
    'assets/image/pexels.jpeg',
    'assets/image/google-logo.jpeg',
    'assets/image/images (1).png',

  ];
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Crosel Slider '),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
        centerTitle: true,
        leading:Icon(Icons.arrow_back),
        actions: [
          Icon(Icons.arrow_forward),
        ],

      ),
      body: Column(
        children: [
          CarouselSlider(
              items: imageList.map((item){
                return Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
    image: DecorationImage(image: AssetImage(item),
    fit: BoxFit.cover,
    )
                ),
                );
    }).toList(),
              
              options: CarouselOptions(
                autoPlay: true,
                height: 600,
                enlargeCenterPage: true,
                viewportFraction: 0.8,
                onPageChanged: (index,reason){
                  setState(() {
                    currentIndex=index;
                  });
                }
              ))
        ],
      )
    );
  }
}
