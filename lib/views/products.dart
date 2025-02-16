import 'dart:math';

import 'package:flutter/material.dart';

class Item {
  final String imageName;
  Item({required this.imageName});
}

class GridItem extends StatefulWidget {
  final Item item;
  final ValueChanged<bool> gridItemSelectedStateChanged;
  const GridItem(
      {super.key,
      required this.item,
      required this.gridItemSelectedStateChanged});

  @override
  _GridItemState createState() => _GridItemState();
}

class _GridItemState extends State<GridItem> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          setState(() {
            isSelected = !isSelected;
            widget.gridItemSelectedStateChanged(isSelected);
          });
        },
        child: Stack(children: <Widget>[
          Padding(
              padding: const EdgeInsets.all(12.0),
              child: SizedBox(
                height: 175,
                width: 175,
                child: Image.asset(widget.item.imageName,
                    fit: BoxFit.cover,
                    color: Colors.black.withOpacity(isSelected ? 0.9 : 0),
                    colorBlendMode: BlendMode.color),
              )),
          isSelected
              ? const Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.check_circle,
                      color: Colors.blue,
                    ),
                  ),
                )
              : Container()
        ]));
  }
}

class ProductsView extends StatefulWidget {
  const ProductsView({super.key});

  @override
  State<ProductsView> createState() => _ProductsViewState();
}

class _ProductsViewState extends State<ProductsView> {
  late List<Item> itemList;
  late List<Item> selectedList;
  @override
  void initState() {
    super.initState();
    loadList();
  }

  void loadList() {
    itemList = [];
    selectedList = [];

    itemList.add(Item(imageName: 'images/heels.jpg'));
    itemList.add(Item(imageName: 'images/heels1.jpg'));
    itemList.add(Item(imageName: 'images/heels2.jpg'));
    itemList.add(Item(imageName: 'images/heels3.jpg'));
    itemList.add(Item(imageName: 'images/heels4.jpg'));
    itemList.add(Item(imageName: 'images/heels5.jpg'));
    itemList.add(Item(imageName: 'images/heels6.jpg'));
    itemList.add(Item(imageName: 'images/heels7.jpg'));
    itemList.add(Item(imageName: 'images/heels8.jpg'));
    itemList.add(Item(imageName: 'images/heels9.jpg'));
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: itemList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) => GridItem(
            item: itemList[index],
            gridItemSelectedStateChanged: (bool value) {
              setState(() {
                if (value) {
                  selectedList.add(itemList[index]);
                } else {
                  selectedList.remove(itemList[index]);
                }
              });
              var numOfItems = selectedList.length;
              debugPrint("Selected $numOfItems items");
            }));
  }
}
