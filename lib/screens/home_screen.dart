import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Componentes en flutter'),
          elevation: 0,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  title: Text('nombre de ruta'),
                  leading: Icon(Icons.abc),
                  onTap: () {
                    //final route = MaterialPageRoute(
                    //  builder: (context) => Listview1Screen());
                    //Navigator.push(context, route);
                    Navigator.pushNamed(context, 'card');
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: 10));
  }
}
