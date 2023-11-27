import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shopping_cart/data/categories.dart';
import 'package:shopping_cart/models/grocery_item.dart';
import 'package:shopping_cart/widget/new_item.dart';
import 'package:http/http.dart' as http;

class GroceryList extends StatefulWidget {
  const GroceryList({super.key});

  @override
  State<GroceryList> createState() => _GroceryListState();
}

class _GroceryListState extends State<GroceryList> {
  List<GroceryItem> _groceryItems =[];
  var _isLoading = true;
  @override
  void initState() {
    super.initState();
    _loadedmethod();
  }
  void _loadedmethod() async {
    final url = Uri.https('flutter-trial1-76517-default-rtdb.firebaseio.com',
        'shopping-list.json');
    final response = await http.get(url);
    if (response.body =='null'){
      setState(() {
        _isLoading = false;
      });
      return;
    }
    final Map<String, dynamic> listData = json.decode(response.body);
    final List<GroceryItem> loadedItem = [];
    for (final items in listData.entries) {
      final category = categories.entries.firstWhere(
          (element) => element.value.title == items.value['category']);
      loadedItem.add(GroceryItem(
          id: items.key,
          name: items.value['name'],
          quantity: items.value['quantity'],
          category: category.value));
    }
    setState(() {
      _groceryItems = loadedItem;
      _isLoading = false;
    });
  }

  void _addItemButton(BuildContext context) async {
    await Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=> const NewItem()));
      _loadedmethod();
  }

  void _onRemoved(GroceryItem item) {
    final url = Uri.https('flutter-trial1-76517-default-rtdb.firebaseio.com',
        'shopping-list/${item.id}.json');
    http.delete(url);
    setState(() {
      _groceryItems.remove(item);
    });
    
  }

  @override
  Widget build(BuildContext context) {
    Widget content = const Center(child: Text("No items added yet"));
    if (_isLoading){
      content = const Center(child: CircularProgressIndicator(),);
    }
    if (_groceryItems.isNotEmpty) {
      content = ListView.builder(
        itemCount: _groceryItems.length,
        itemBuilder: (ctx, index) => Dismissible(
          onDismissed: (direction) {
            _onRemoved(_groceryItems[index]);
          },
          key: ValueKey(_groceryItems[index].id),
          child: ListTile(
            title: Text(_groceryItems[index].name),
            leading: Container(
              width: 20,
              height: 20,
              color: _groceryItems[index].category.color,
            ),
            trailing: Text("${_groceryItems[index].quantity}"),
          ),
        ),
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text("You Groceries"),
        actions: [
          IconButton(
              onPressed: () {
                _addItemButton(context);
              },
              icon: const Icon(Icons.add))
        ],
      ),
      body: content,
    );
  }
}
