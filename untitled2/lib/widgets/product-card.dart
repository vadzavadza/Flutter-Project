
import 'package:flutter/material.dart';
import 'package:untitled2/models/models.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final double widthFactor;
  final double leftPosition;
  final bool isWishlist;


  const ProductCard({
    Key? key,
    required this.product,
    this.leftPosition = 5,
     this.widthFactor = 2.5,
     this.isWishlist = false,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double widthValue = MediaQuery.of(context).size.width / widthFactor ;

    return InkWell(
      onTap:(){
        Navigator.pushNamed(
          context,
          '/product',
          arguments: product,
        );
      },
      child: Stack(
        children:<Widget> [
        Container(
          width: widthValue,
          height: 150,
          child: Image.network(product.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 60,
          left: leftPosition,
          child: Container(
            width: widthValue - 5 - leftPosition,                                                              // MediaQuery.of(context).size.width / 2.5 ,
            height: 80,
            decoration: BoxDecoration(color: Colors.black.withAlpha(50),
            ),
          ),
        ),
        Positioned(
          top: 65,
          left: leftPosition + 5,
          child: Container(
            width: widthValue - 15 - leftPosition ,                             //MediaQuery.of(context).size.width / 2.5-10 ,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text(
                          product.name,
                          style: Theme.of(context).textTheme.headline5!.copyWith(color: Colors.white),
                        ),

                        Text(
                          '\$${Product.products[0].totalAmount }',
                          style: Theme.of(context).textTheme.headline6!.copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.add_circle, color: Colors.white,)
                    ),
                  ),
                  isWishlist ?
                  Expanded(
                    child: IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.delete, color: Colors.white,)
                    ),
                  )
                      :SizedBox(),
                ],
              ),
            ),
          ),
        ),
      ],
      ),
    );
  }
}