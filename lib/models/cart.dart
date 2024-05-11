import 'package:flutter/material.dart';

import 'flower.dart';

class Cart extends ChangeNotifier {
  List<Flower> flowerFlower = [
    //list of flower for sale
    Flower(
      name: 'Roses',
      price: '25',
      description: 'means love, beauty, and affection.',
      imagePath: 'lib/image/1.jpg',
    ),
    Flower(
      name: 'Sunflower',
      price: '15',
      description: 'means brightness and cheerfulness.',
      imagePath: 'lib/image/2.jpg',
    ),
    Flower(
      name: 'Forget me not',
      price: '15',
      description: 'means true love, and memories.',
      imagePath: 'lib/image/3.jpg',
    ),
    Flower(
      name: 'Lily',
      price: '20',
      description: 'means purity, innocence and renewal.',
      imagePath: 'lib/image/4.jpg',
    ),
    Flower(
      name: 'Peony',
      price: '23',
      description: 'means honor,romance and beauty.',
      imagePath: 'lib/image/5.jpg',
    ),
    Flower(
      name: 'Tulip',
      price: '16',
      description: 'means perfect love,elegance and grace.',
      imagePath: 'lib/image/6.jpg',
    ),
    Flower(
      name: 'Dahlia',
      price: '18',
      description: 'means inner strength, and dignity.',
      imagePath: 'lib/image/7.jpg',
    ),
    Flower(
      name: 'Daisy',
      price: '10',
      description: 'means Innocence, purity and simplicity.',
      imagePath: 'lib/image/8.jpg',
    ),
    Flower(
      name: 'Hydrangea',
      price: '20',
      description: 'means understanding and Emotion.',
      imagePath: 'lib/image/9.jpg',
    ),
  ];

  List<Flower> userCart = []; // รายการสินค้าในตะกร้าของลูกค้า
  double extraFee = 0; // ค่าธรรมเนียมเพิ่มเติม

  void addExtraFee(double fee) {
    extraFee += fee;
    notifyListeners();
  }

  void removeExtraFee(double fee) {
    extraFee -= fee;
    if (extraFee < 0) extraFee = 0; // ป้องกันไม่ให้มีค่าติดลบ
    notifyListeners();
  }

  List<Flower> getFlowerList() {
    return flowerFlower;
  }

  List<Flower> getUserCart() {
    return userCart;
  }

  void addItemToCart(Flower flower) {
    userCart.add(flower);
    notifyListeners();
  }

  void removeItemFromCart(Flower flower) {
    userCart.remove(flower);
    notifyListeners();
  }

  bool hasExtraFee() {
    return extraFee > 0;
  }

  double getTotalPrice() {
    double totalPrice = 0;
    for (Flower flower in userCart) {
      totalPrice += double.parse(flower.price);
    }
    return totalPrice;
  }

  int getFlowerCount(Flower flower) {
    int count = 0;
    for (Flower item in userCart) {
      if (item == flower) {
        count++;
      }
    }
    return count;
  }

  bool hasFlowers() {
    return userCart.isNotEmpty;
  }

  // เพิ่มฟังก์ชันสำหรับการเพิ่มสินค้าเข้าในตะกร้าผ่าน Checkbox
  void addFlowerToCartFromCheckbox(Flower flower, bool isChecked) {
    if (isChecked) {
      // เพิ่มสินค้าเข้าในตะกร้า
      addItemToCart(flower);
    } else {
      // ลบสินค้าออกจากตะกร้า
      removeItemFromCart(flower);
    }
  }
}
