import 'package:get/get.dart';

class RegraController extends GetxController {
  String image = '';
  double price = 0.0;
  double price2 = 0.0;
  double pricetotal = 0.0;
  String? text = '';
  var indiceAtual = 0.obs;
  Rx<int> num1 = Rx<int>(0);
  Rx<int> num2 = Rx<int>(0);

  var number1 = 0.obs;
  var number2 = 0.obs;

  void add1() {
    number1++;
  }

  void add2() {
    number2++;
  }

  void remove1() {
    number1--;
  }

  void remove2() {
    number2--;
  }

  double priceUnit() {
    pricetotal = 0;
    pricetotal = num1.value * price;

    return pricetotal;
  }

  double priceUnit2() {
    pricetotal = 0;
    pricetotal = num2.value * price2;

    return pricetotal;
  }

  void onTabTapped(int index) {
    indiceAtual.value = index;
  }
}
