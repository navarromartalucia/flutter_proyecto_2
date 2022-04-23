import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Column(
        children: const [
          FadeInImage(
              placeholder: AssetImage('assets/jar-loading.gif'),
              image: NetworkImage(
                  'https://inspirationfeed.com/wp-content/uploads/2019/10/Sandy-beach-with-sea-waves-palm-trees-and-walking-people.jpg'))
        ],
      ),
    );
  }
}
