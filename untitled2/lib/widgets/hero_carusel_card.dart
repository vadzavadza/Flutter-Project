import 'package:flutter/material.dart';
import 'package:untitled2/models/models.dart';

class HeroCarouselCard extends StatelessWidget{
  final Category? category;
  final Product? product;


  HeroCarouselCard ({
     this.category,
     this.product,
  });
  @override
  Widget build (BuildContext context){
    return InkWell(
      onTap: (){
        if(this.product == null){
          Navigator.pushNamed(context, '/catalog',arguments: category,
          );
        }

      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5.0,vertical: 20),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          child: Stack(
            children: <Widget>[
              Image.network(
                  product == null?
                  category!.imageUrl
                  : product!.imageUrl,
                  fit: BoxFit.cover,
                  width: 1000.0
              ),
              Positioned(
                bottom: 0.0,
                left: 0.0,
                right: 0.0,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(200, 0, 0, 0),
                        Color.fromARGB(0, 0, 0, 0)
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20.0),
                  child: Text(
                      product == null?
                      category!.name
                          : '',                      style: Theme.of(context).textTheme.headline2!.copyWith(color:Colors.white,)
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}