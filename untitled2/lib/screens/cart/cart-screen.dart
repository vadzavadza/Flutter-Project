import 'package:flutter/material.dart';
import 'package:untitled2/models/cart-model.dart';

import '../../widgets/custom-appbar.dart';
import '../../widgets/widgets.dart';


class CartScreen extends StatelessWidget {
  static const String routeName='/cart';
//  const CartScreen({Key? key}) : super(key: key);

  static Route route(){
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (context) => CartScreen(),
    );

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Cart'),
      bottomNavigationBar:  BottomAppBar(
        color: Colors.black,
        child: Container(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly   ,
           children: [

              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.white),
                onPressed: (){}, child: Text('GO TO CHECKOUT', style:Theme.of(context).textTheme.headline3!,),)
            ],),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text(
                  Cart().feeCommissionString,
                style : Theme.of(context).textTheme.headline5!.copyWith(
                  color: Colors.white,
                ),
                ),
                ElevatedButton(onPressed: (){Navigator.pushNamed(context, '/');
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    shape: RoundedRectangleBorder(),
                    elevation: 0,

                  ),
                  child:
                    Text('Add More', style: Theme.of(context).textTheme.headline5?.copyWith(color:Colors.white,),
                    ),
                ),
              ],
              ),
              SizedBox(width: 10),

              SizedBox(
                height: 400,
               child:   ListView.builder(
                   itemCount: Cart().products.length,
                    itemBuilder:(context,index){
                     return CartProductCard(product: Cart().products[index]);

                   },
                   ),
              ),
                          ],
          ),

            Column(children: [
              Divider(thickness: 2),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('SUBTOTAL', style: Theme.of(context).textTheme.headline5,),
                        Text('\$${Cart().subtotalString}' ,
                          style: Theme.of(context).textTheme.headline5,
                        ),

                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('COMMISSION OF THE BANK', style: Theme.of(context).textTheme.headline5,),
                        Text('\$${Cart().feeCommission}' ,style: Theme.of(context).textTheme.headline5,),

                      ],
                    ),

                  ],
                ),
              ),
              Stack(children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  decoration: BoxDecoration(color: Colors.black.withAlpha(50),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.all(5.0),
                  height: 50,
                  decoration: BoxDecoration(color: Colors.black,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('TOTAL',
                          style: Theme.of(context).textTheme.headline5!.copyWith(color: Colors.white),
                        ),
                        Text(
                          '\$${Cart().totalAmountString}' ,
                          style: Theme.of(context).textTheme.headline5!.copyWith(color: Colors.white),
                        ),

                      ],
                    ),
                  ),
                ),

              ],
              ),

            ],),


          ],
        ),
      ),

    );
  }
}


 
