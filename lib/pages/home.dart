import 'package:flutter/material.dart';
import '../utils/asset_path.dart';
import '../widgets/category_widgets.dart';
import '../widgets/item_card_horizontal.dart';
import '../widgets/item_card_vertical.dart';
import '../widgets/widgets_support.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool burger = false;
  bool salad = false;
  bool pizza = false;
  bool iceCream = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hello Abdullah,',
                  style: AppWidget.boldTextFieldStyle(),
                ),
                Container(
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8)),
                  child: const Icon(
                    Icons.shopping_cart_outlined,
                    size: 28,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Delicious Food',
              style: AppWidget.headLineTextFieldStyle(),
            ),
            Text(
              'Discover and Get Great Food',
              style: AppWidget.lightTextFieldStyle(),
            ),
            const SizedBox(
              height: 20,
            ),
            showItems(),
            const SizedBox(height: 20,),

            SizedBox(
              height: 260,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index){
                    return const ItemCardVertical();
                  }, separatorBuilder: (_,__)=> const SizedBox(width: 10,), itemCount: 5),
            ),
            const SizedBox(height: 10,),

            Expanded(child: ListView.separated(
                scrollDirection: Axis.vertical,
                itemBuilder: (context,index){
                  return  const ItemCardHorizontal();
                }, separatorBuilder: (_,__)=> const SizedBox(width: 10,), itemCount: 5),)
          ],
        ),
      ),
    );
  }
  Widget showItems() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CategoryCard(
          isSelected: burger,
          imagePath: AssetsPath.burger,
          onTap: () {
            burger = true;
            salad = false;
            pizza = false;
            iceCream = false;
            setState(() {});
          },
        ),
        CategoryCard(
          isSelected: iceCream,
          imagePath: AssetsPath.iceCream,
          onTap: () {
            burger = false;
            salad = false;
            pizza = false;
            iceCream = true;
            setState(() {});
          },
        ),
        CategoryCard(
          isSelected: pizza,
          imagePath: AssetsPath.pizza,
          onTap: () {
            burger = false;
            salad = false;
            pizza = true;
            iceCream = false;
            setState(() {});
          },
        ),
        CategoryCard(
          isSelected: salad,
          imagePath: AssetsPath.salad,
          onTap: () {
            burger = false;
            salad = true;
            pizza = false;
            iceCream = false;
            setState(() {});
          },
        ),
      ],
    );
  }
}




