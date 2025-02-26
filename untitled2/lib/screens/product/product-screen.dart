import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled2/models/models.dart';
import 'package:untitled2/wishlist-blocs/wishlist_bloc.dart';

import '../../widgets/widgets.dart';


class ProductScreen extends StatelessWidget {
  static const String routeName='/product';
  //const ProductScreen({Key? key}) : super(key: key);  

  static Route route({required Product product}){
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => ProductScreen(product: product),
    );
  }

  final Product product;

  const ProductScreen({required this.product});  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: product.name),
      bottomNavigationBar:
      BottomAppBar(
        color: Colors.black,
        child: Container(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly   ,
            children: [
            IconButton(onPressed:(){} , icon: Icon(Icons.share,color: Colors.white,)),
            BlocBuilder<WishlistBloc, WishlistState>(
            builder: (context, state) {

             return IconButton(onPressed:(){
             context.read<WishlistBloc>()..add(AddWishlistProduct(product));

                final snackBar = SnackBar(content: Text('Added to your Wishlist'));
             ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } ,
                icon: Icon(Icons.favorite, color: Colors.white,));
  },
),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.white),
              onPressed: (){}, child: Text('Add', style:Theme.of(context).textTheme.headline3!,),)
          ],),
        ),
      )
      ,
    body:
    ListView(
      children: [CarouselSlider(
        options: CarouselOptions(
          aspectRatio: 1.5,
          viewportFraction: 0.9,
          enlargeCenterPage: true,
          enlargeStrategy: CenterPageEnlargeStrategy.height,
          scrollDirection: Axis.vertical,
          autoPlay: true,
        ),
        items:  [
          HeroCarouselCard(product: product,
          )

        ]  ,
      ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                alignment: Alignment.bottomCenter,
                color: Colors.black.withAlpha(50),
              ),
              Container(
                margin: const EdgeInsets.all(5.0),
                width: MediaQuery.of(context).size.width - 10,
                height: 50,
                color: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text(product.name,style: Theme.of(context).textTheme.headline5!. copyWith(color: Colors.white),),
                    Text('${product.totalAmount}',style: Theme.of(context).textTheme.headline5!. copyWith(color: Colors.white),),

                  ],),
                ),
              ),
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: ExpansionTile(
              initiallyExpanded: true,
              title: Text('Information',
            style: Theme.of(context).textTheme.headline3),
            children: [
              ListTile(title: Text('At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. ',
              style: Theme.of(context).textTheme.bodyText1,
              ),
                )
            ],

          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: ExpansionTile(

            title: Text('Payment Information',
                style: Theme.of(context).textTheme.headline3),
            children: [
              ListTile(title: Text('At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. ',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              )
            ],

          ),
        )
    ],
    ),

    );
  }
}