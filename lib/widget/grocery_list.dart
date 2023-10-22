import 'package:flutter/material.dart';
import 'package:shopping_list/data/dummy_items.dart';
import 'package:shopping_list/widget/new_item.dart';

class GroceryList extends StatefulWidget {
  const GroceryList({super.key});

  State<GroceryList> createState() {
      return _GroceryListState();
  }
}
class _GroceryListState extends State<GroceryList>{


  void _addIcon(){
     Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => const NewItem()));
  }

  @override
  Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(
             title:const Text('Your Grocery'),
             actions: [
               IconButton(
                   onPressed: _addIcon,
                   icon:const  Icon(Icons.add)),
             ],
           ),
         body: ListView.builder(
           itemCount: groceryItems.length,
             itemBuilder: (ctx,index) => ListTile(
               title: Text(groceryItems[index].name),
               leading: Container(
                 width: 24,
                 height: 24,
                 color: groceryItems[index].category.color,
               ),
               trailing: Text(groceryItems[index].quantity.toString()),
             )),
       );
  }
}