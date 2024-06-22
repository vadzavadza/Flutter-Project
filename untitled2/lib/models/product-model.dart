import 'package:equatable/equatable.dart';

class Product extends Equatable{
  final String name;
  final String category;
  final String imageUrl;
  final double totalAmount;
  final bool  isRecomended;
  final bool isPopular;

  const Product({
    required this.name,
    required this.category,
    required this.imageUrl,
    required this.totalAmount,
    required this.isRecomended,
    required this.isPopular,
});


  @override
  List<Object?> get props => [name,category,imageUrl,totalAmount,isRecomended,isPopular];

  static List<Product> products = [

    Product(
        name: 'Drones for Army Ukraine',
        category: 'Army',
        imageUrl: 'https://cdnuploads.aa.com.tr/uploads/Contents/2022/06/13/thumbs_b_c_e1395424280388667eba64240490434f.jpg?v=151212',
        totalAmount: 100000,
        isRecomended: true,
        isPopular: false,
    ),
    Product(
      name: 'arms for Army Ukraine',
      category: 'Army',
      imageUrl: 'https://cdnuploads.aa.com.tr/uploads/Contents/2022/06/13/thumbs_b_c_e1395424280388667eba64240490434f.jpg?v=151212',
      totalAmount: 100000,
      isRecomended: true, 
      isPopular: false,
    ),
    Product(
      name: 'Pickups for Army Ukraine',
      category: 'Army',
      imageUrl: 'https://klaxonnew.ru/wp-content/uploads/2021/08/xUAZ-469-zamenili-Toyota-Hilux3-1024x682.jpeg.pagespeed.ic.Sb-M4_anvV.jpg',
      totalAmount: 150000,
      isRecomended: true,
      isPopular: true,
    ),
    Product(
      name: 'Ussuri tigers',
      category: 'Animals',
      imageUrl: 'https://www.meme-arsenal.com/memes/113b57d0b593992c0ca2d2e5b9298de9.jpg',
      totalAmount: 80000,
      isRecomended: false,
      isPopular: true,
    ),
    Product(
      name: 'Baobabs',
      category: 'Forests',
      imageUrl: 'https://www.pipsik.club/wp-content/uploads/2020/02/adansonia-e1582765485163.jpg',
      totalAmount: 100000,
      isRecomended: true,
      isPopular: false,
    ),
  ];
}