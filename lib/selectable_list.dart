library selectable_list;

import 'package:flutter/material.dart';

/// A Calculator.
class SelectableList extends StatefulWidget {
  final List<dynamic> list;
  final String itemLabelKey;
  final String itemIconKey;
  final String itemIdKey;

  SelectableList({required this.list, required this.itemLabelKey, required this.itemIconKey, required this.itemIdKey});

  @override
  _SelectableListState createState() => _SelectableListState();
}

class _SelectableListState extends State<SelectableList> {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          for(int i=0; i<widget.list.length; i++)
            _defaultListItem(widget.list[i].toMap())
        ],
      ),
    );
  }

  String selectedItem = "";

  Widget _defaultListItem(Map<String, dynamic> item) {
    return InkWell(
      onTap: () {
        setState(() {
          this.selectedItem = item[widget.itemIdKey];
        });
      },
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.black12))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.list),
                    SizedBox(width: 8,),
                    Text(item['title']),
                  ],
                ),
                if (item[widget.itemIdKey] == selectedItem)
                  Icon(Icons.check_circle)
              ],),
            // if (category['hasChild']==true)
            //   _dropdownWidget(category['children']),
          ],
        ),
      ),
    );
  }

}
