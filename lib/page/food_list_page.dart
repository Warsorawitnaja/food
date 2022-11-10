import 'package:flutter/material.dart';
import 'package:food/models/food.dart';
import 'package:food/page/food_page.dart';

var foodList = [
  Food(
      name: "ข้าวมันไก่",
      price: 40,
      imageUrl:
      'order1.jpg'),
  Food(
      name: 'ข้าวหมูกรอบ',
      price: 45,
      imageUrl:
      'order1.jpg'),
  Food(
      name: 'ผัดไทย',
      price: 50,
      imageUrl:
      'order1.jpg'),
  Food(
      name: 'ผัดซีอิ้ว',
      price: 35,
      imageUrl:
      'order1.jpg'),
  Food(
      name: 'ข้าวขาหมู',
      price: 40,
      imageUrl:
      'order1.jpg'),
  Food(
      name: 'ข้าวหน้าเป็ด',
      price: 60,
      imageUrl:
      'order1.jpg'),
  Food(
      name: 'ส้มตำ',
      price: 40,
      imageUrl:
      'order1.jpg'),
  Food(
      name: 'ข้าวผัก',
      price: 30,
      imageUrl:
      'order1.jpg'),
  Food(
      name: 'กะเพราไข่ดาว',
      price: 35,
      imageUrl:
      'order1.jpg'),
];

class FoodListPage extends StatefulWidget {
  const FoodListPage({Key? key}) : super(key: key);

  @override
  State<FoodListPage> createState() => _FoodListPageState();
}

class _FoodListPageState extends State<FoodListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Food List"),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, i) {
          var food = foodList[i];

          /// รายการอาหารใน List ของเรา
          return Card(
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)
                =>
                    FoodPage(food: food,)
                ),);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    //Icon(Icons.fastfood, size: 50.0,),
                    Image.asset("assets/images/${food.imageUrl}", width: 100.0,
                      height: 100.0,
                      fit: BoxFit.fill,),
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            food.name,
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            food.price.toString() + " บาท",
                            style: TextStyle(fontSize: 20),
                          ),
                          //Text("40 บาท")
                        ],
                      ),
                    ),
                    Text("0"),
                  ],
                ),
              ),
            ),
          );
        },
        itemCount: foodList.length,
      ),

      /// ส่งฟังชันไห้ builder
      ///
    );
  }
}
