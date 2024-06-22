import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:untitled2/models/models.dart';
import 'package:untitled2/models/wishlist-model.dart';

part 'wishlist_event.dart';
part 'wishlist_state.dart';

class WishlistBloc extends Bloc<WishlistEvent, WishlistState> {
  WishlistBloc() : super(WishlistLoading()) {
    on<StartWishlist>(_mapStartWishlistToState);
    on<AddWishlistProduct>(_mapAddWishlistToState);
    on<RemoveWishlistProduct>(_mapRemoveWishlistToState);
  }

  void _mapStartWishlistToState(event, emit) async {
    emit(WishlistLoading());

    try {
      await Future.delayed(Duration(seconds: 1));
      emit(WishlistLoaded());
    } catch (_) {}
  }

  // Error ...

  void _mapAddWishlistToState(AddWishlistProduct event, Emitter<WishlistState> emit) async {
    final state = this.state; // local variable
    if (state is WishlistLoaded) {
      try {
        emit(WishlistLoaded(
            wishlist: Wishlist(
                products: List.from(state.wishlist.products)
                  ..add(event.product))));
      } catch (_) {}
    }
  }

  void _mapRemoveWishlistToState(event, emit) async {}
}



