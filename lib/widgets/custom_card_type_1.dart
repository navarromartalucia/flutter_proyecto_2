import 'dart:typed_data';

import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.add_chart_rounded, color: AppTheme.primary),
            title: Text('Soy un titulo'),
            subtitle: Text(
                'lasihdaiskjlfhoa;uisfhuioa;shdfildshouiahfdgoihjrewothjeroithjioerhnftg'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () {}, child: const Text('Cancelar')),
                TextButton(
                  onPressed: () {},
                  child: const Text('OK'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
