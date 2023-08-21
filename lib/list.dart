import 'package:flutter/material.dart';

class ListWidget extends StatelessWidget {
  const ListWidget({super.key});
  @override
  Widget build(BuildContext context) {
    List<ListItemWidget> list = [];
    for (var i = 0; i <= 100; i++) {
      list.add( ListItemWidget(key: Key(i.toString()) ,count: 0,));
    }
    return Scaffold(
      appBar: AppBar(title: const Text("Counter List"),elevation: 0,),
      body: ListView.builder(itemCount: list.length,itemBuilder: (context,index)=> list[index]));
  }
}

class ListItemWidget extends StatefulWidget {
   int count; 
   ListItemWidget({super.key,required this.count});

  @override
  State<ListItemWidget> createState() => _ListItemWidgetState();
}


class _ListItemWidgetState extends State<ListItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(widget.count.toString(),style: const TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
            MaterialButton(
              onPressed: () {
                setState(() {
                  widget.count++;
                });
              },
              child: const Text("+"),
            )
          ],
        ));
  }
}
