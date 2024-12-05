import 'package:flutter/material.dart';
import 'package:quick_food/widgets/widgets_support.dart';
import '../pages/details.dart';
import '../utils/asset_path.dart';

class ItemCardVertical extends StatelessWidget {
  const ItemCardVertical({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>const Details()));
      },
      child: Card(
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Image.asset(AssetsPath.dummyItem,height: 150,width: 150,fit: BoxFit.cover,),
              const SizedBox(height: 6,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Veggie Taco Hash',style: AppWidget.semiBoldTextFieldStyle(),),
                  Text('Fresh and Healthy',style: AppWidget.lightTextFieldStyle(),),
                  Text('250Tk.',style: AppWidget.semiBoldTextFieldStyle())
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}