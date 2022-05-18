import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_input_field.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'lucia',
      'last_name': 'navarro',
      'email': '@google.com',
      'password': '123456',
      'role': 'Admin'
    };
    return Scaffold(
        appBar: AppBar(
          title: Text('Inputs y Forms'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Form(
              key: myFormKey,
              child: Column(
                children: [
                  CustomInputField(
                    labelText: 'Nombre',
                    hintText: 'Nombre del Usuario',
                    tipoInput: TextInputType.name,
                    formProperty: 'first_name',
                    formValues: formValues,
                  ),
                  const SizedBox(height: 30),
                  CustomInputField(
                    labelText: 'Apellido',
                    hintText: 'Apellido del Usuario',
                    tipoInput: TextInputType.name,
                    formProperty: 'last_name',
                    formValues: formValues,
                  ),
                  const SizedBox(height: 30),
                  CustomInputField(
                    labelText: 'Correo',
                    hintText: 'Correo del Usuario',
                    tipoInput: TextInputType.emailAddress,
                    formProperty: 'email',
                    formValues: formValues,
                  ),
                  const SizedBox(height: 30),
                  CustomInputField(
                    labelText: 'Password',
                    hintText: 'Password del Usuario',
                    tipoInput: TextInputType.name,
                    obscure: true,
                    formProperty: 'password',
                    formValues: formValues,
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton(
                      child: const SizedBox(
                          width: double.infinity,
                          child: Center(child: Text('Guardar'))),
                      onPressed: () {
                        FocusScope.of(context)
                            .requestFocus(FocusNode()); //minimiza el teclado
                        if (!myFormKey.currentState!.validate()) {
                          print('Formulario no valido');
                          return;
                        }
                        print(formValues);
                      })
                ],
              ),
            ),
          ),
        ));
  }
}
