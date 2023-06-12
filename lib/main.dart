import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My Shopping List",
      home: HomePage(),
    );
  }
}
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  MySnackBar(message,context){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
    );
  }


  @override
  Widget build(BuildContext context) {
    final List<String> shoppingItems = [
      'Apples',
      'Bananas',
      'Milk',
      'Bread',
      'Eggs',
    ];
    return Scaffold(
      appBar: AppBar(title: Text("My Shopping List"),
      actions: [
       IconButton(onPressed: (){MySnackBar("Add to Card Successful.", context);}, icon: Icon(Icons.shopping_cart))
      ],),
      body: ListView.builder(
        itemCount: shoppingItems.length,
          itemBuilder:(context,indext) {
          return ListTile(
            leading: Icon(Icons.shopping_basket_outlined),
            title: Text(shoppingItems[indext]),
          );

      }),



    );
  }
}

