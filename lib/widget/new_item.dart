import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shopping_cart/data/categories.dart';
import 'package:shopping_cart/models/category.dart';
//import 'package:shopping_cart/models/grocery_item.dart';
import 'package:http/http.dart' as http;

class NewItem extends StatefulWidget {
  const NewItem({super.key});

  @override
  State<NewItem> createState() {
    return _NewItemState();
  }
}

class _NewItemState extends State<NewItem> {
  var _itemName = '';
  var _itemQty = 1;
  var _itemType = categories[Categories.vegetables];
  final _formKey = GlobalKey<FormState>();
  bool _isSending = false;
  void _saveItem() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      setState(() {
        _isSending = true;
      }); 
      final url = Uri.https('flutter-trial1-76517-default-rtdb.firebaseio.com',
          'shopping-list.json');
      await http.post(url,
          headers: {
            'Content-Type': 'application/json',
          },
          body: json.encode({
            'name': _itemName,
            'quantity': _itemQty,
            'category': _itemType!.title,
          }));
      if (!context.mounted) {
        return;
      }
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add a new item"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                maxLength: 50,
                decoration: const InputDecoration(
                  label: Text("Name"),
                ),
                validator: (value) {
                  if (value == null ||
                      value.isEmpty ||
                      value.trim().length == 1 ||
                      value.trim().length >= 50) {
                    return "The characters should be between 1 and 50";
                  }
                  return null;
                },
                onSaved: (value) {
                  _itemName = value!;
                },
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        label: Text("Quantity"),
                      ),
                      initialValue: '1',
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            int.tryParse(value) == null ||
                            int.tryParse(value)! <= 0) {
                          return "Please input proper Quantity";
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _itemQty = int.parse(value!);
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: DropdownButtonFormField(
                      value: _itemType,
                      items: [
                        for (final categorylist in categories.entries)
                          DropdownMenuItem(
                            value: categorylist.value,
                            child: Row(
                              children: [
                                Container(
                                  height: 10,
                                  width: 10,
                                  color: categorylist.value.color,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(categorylist.value.title),
                              ],
                            ),
                          )
                      ],
                      onChanged: (value) {
                        setState(() {
                          _itemType = value!;
                        });
                      },
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: _isSending
                          ? null
                          : () {
                              _formKey.currentState!.reset();
                            },
                      child: const Text("Reset")),
                  ElevatedButton(
                      onPressed: _isSending ? null : _saveItem,
                      child: _isSending
                          ? const SizedBox(
                              height: 20,
                              width: 20,
                              child: CircularProgressIndicator(),
                            )
                          : const Text("Submit"))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
