import 'package:flutter/material.dart';
import 'package:test_list_view/scroll_animator.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: new IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: new Icon(Icons.arrow_back_ios, color: Colors.grey),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 200),
        child: AnimatedListView(
          duration: 100,
          scrollDirection: Axis.horizontal,
          children: List.generate(
            21,
            (index) => const Card(
              elevation: 50,
              margin: EdgeInsets.symmetric(horizontal: 10),
              shadowColor: Colors.black,
              color: Color.fromARGB(255, 255, 0, 0),
              child: SizedBox(
                height: 300,
                width: 200,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://dafunda.com/wp-content/uploads/2021/10/Nexus_personal_1.jpg"),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
