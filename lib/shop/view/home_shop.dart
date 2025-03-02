import 'package:e_commerce/account/view/profile_screen.dart';
import 'package:e_commerce/shop/model/product_model.dart';
import 'package:flutter/material.dart';

class HomeShopScreen extends StatefulWidget {
  const HomeShopScreen({super.key});

  @override
  State<HomeShopScreen> createState() => _HomeShopScreenState();
}

class _HomeShopScreenState extends State<HomeShopScreen> {
  final productList = ProductModel().products;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ProfileScreen(),
      ),
      appBar: AppBar(
        title: Text('ស្អី​ក៏លក់',
            style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                fontFamily: 'Freehand-Regular')),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: 'Find what you want..!!',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
          ),
          buildGridViewProduct(),
        ],
      ),
    );
  }

  Widget buildGridViewProduct() => Expanded(
        child: GridView.builder(
          itemCount: productList.length,
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 400, childAspectRatio: 10 / 14),
          itemBuilder: (context, index) {
            return buildProductCard(pro: productList[index]);
          },
        ),
      );
  Widget buildProductCard({required ProductModel pro}) => Stack(
        children: [
          Container(
            margin: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20)),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(pro.image!))),
                  ),
                ),
                Column(
                  spacing: 4,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      pro.name!,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        overflow: TextOverflow.ellipsis,
                      ),
                      maxLines: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        if (pro.price != pro.sellPrice)
                          Text(
                            '\$1.25',
                            style: TextStyle(
                              color: Colors.black45,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                        Text(
                          '\$0.75',
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          Positioned(
              top: 8,
              right: 8,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    pro.favorite = !pro.favorite!;
                  });
                },
                child: Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    color: Colors.white54,
                    shape: BoxShape.circle,
                  ),
                  child: pro.favorite!
                      ? Icon(
                          Icons.favorite,
                          color: Colors.red,
                        )
                      : Icon(
                          Icons.favorite_border_outlined,
                          color: Colors.black,
                        ),
                ),
              ))
        ],
      );
}
