import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../models/models.dart';
import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName='/';
  const HomeScreen({Key? key}) : super(key: key);

  static Route route(){
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName), builder: (_) => HomeScreen(),
    );

  }
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: CustomAppBar(title: 'MoneyMakeMoney'),
      bottomNavigationBar: CustomNavBar(),
      body: Column(
        children: [
          Container(
              child:
              CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 1.5,
                  viewportFraction: 0.9,
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                  scrollDirection: Axis.vertical,
                  autoPlay: true,
                ),
                items: Category.categories.map((category)=> HeroCarouselCard(category: category)).toList()  ,
              ),
          ),
          SectionTitile(title: 'Recommended'),
          ProductCarousel(
              products: Product.products.where((product)=>product.isRecomended).toList()),
          SectionTitile(title: 'Most Popular'),
          ProductCarousel(
              products: Product.products.where((product)=>product.isPopular).toList()),
        ],
      ),
    );

  }
}






