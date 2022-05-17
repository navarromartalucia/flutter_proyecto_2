import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Inputs y Forms'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: [
                TextFormField(
                  autofocus: false,
                  initialValue: '',
                  textCapitalization: TextCapitalization.words,
                  onChanged: (value) {
                    print('value: $value');
                  },
                  validator: (value) {
                    if (value == null) return 'Este campo es requerido';
                    return value.length < 3 ? 'Minimo de tres letras' : null;
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: const InputDecoration(
                      hintText: 'Nombre del Usuario',
                      labelText: 'Nombre',
                      helperText: 'Solo letras',
                      counterText: '3 caracteres',
                      //prefixIcon: Icon(Icons.verified_user_sharp),
                      suffixIcon: Icon(Icons.group_outlined),
                      icon: Icon(Icons.assignment_ind_outlined),
                      //focusedBorder: OutlineInputBorder(
                      //  borderSide: BorderSide(color: AppTheme.primary)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              topRight: Radius.circular(10)))),
                )
              ],
            ),
          ),
        ));
  }
}
