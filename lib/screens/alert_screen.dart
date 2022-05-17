import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fl_components/theme/app_theme.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIOS(BuildContext context) {
    showCupertinoDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: const Text('Titulo'),
            content: Column(mainAxisSize: MainAxisSize.min, children: const [
              Text('este es el contenido de la alerta'),
              SizedBox(height: 10),
              FlutterLogo(
                size: 100,
              )
            ]),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Cancelar')),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('OK'))
            ],
          );
        });
  }

  void displayDialogAndroid(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            elevation: 5,
            title: const Text('Titulo'),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(10)),
            content: Column(mainAxisSize: MainAxisSize.min, children: const [
              Text('este es el contenido de la alerta'),
              SizedBox(height: 10),
              FlutterLogo(
                size: 100,
              )
            ]),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Cancelar'))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            //style: ElevatedButton.styleFrom(
            //primary: AppTheme.primary,
            //shape: const StadiumBorder(),
            //elevation: 0
            //),
            child: const Text(
              'Mostrar Alerta',
              style: TextStyle(fontSize: 15),
            ),
            //onPressed: () => displayDialogAndroid(context)),
            onPressed: () => !Platform.isAndroid
                ? displayDialogAndroid(context)
                : displayDialogIOS(context)),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: AppTheme.primary,
          child: const Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context); //cerrar pantalla
          }),
    );
  }
}
