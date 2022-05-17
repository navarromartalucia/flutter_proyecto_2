import 'package:fl_components/widgets/custom_card_type_2.dart';
import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final options = const [
    'Megaman',
    'Metal Gear',
    'Super Smash',
    'Final Fantasy'
  ];

  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('List View Tipo 2')),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  onTap: () {},
                  title: Text(options[index]),
                  trailing: const Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.pink,
                  ),
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: options.length));
  }
}
