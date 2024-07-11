import 'package:flutter/material.dart';

class AnimatedListExample extends StatefulWidget {
  const AnimatedListExample({super.key});

  @override
  _AnimatedListExampleState createState() => _AnimatedListExampleState();
}

class _AnimatedListExampleState extends State<AnimatedListExample> {
  final List<int> listItems = [1, 2, 3, 4, 5];
  final GlobalKey<AnimatedListState> listKey = GlobalKey();

  void addItem() {
    final int newIndex = listItems.length + 1;
    listItems.add(newIndex);
    listKey.currentState?.insertItem(listItems.length - 1);
  }

  void removeItem(int index) {
    int removedItem = listItems.removeAt(index);
    listKey.currentState?.removeItem(
      index, (context, animation) => buildListItem(removedItem, animation),
    );
  }

  Widget buildListItem(int item, Animation<double> animation) {
    return SizeTransition(
      sizeFactor: animation,
      child: ListTile(
        title: Text('Item $item'),
        onTap: () => removeItem(listItems.indexOf(item)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        shadowColor: Colors.black,
        title: const Text('AnimatedList',style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Center(
        child: AnimatedList(
          key: listKey,
          initialItemCount: listItems.length,
          itemBuilder: (context, index, animation) {
            return buildListItem(listItems[index], animation);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addItem,
        child: const Icon(Icons.add),
      ),
    );
  }
}
