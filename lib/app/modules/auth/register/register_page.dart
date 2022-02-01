import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vakinha_burger_mobile/app/core/ui/vakinha_ui.dart';
import 'package:vakinha_burger_mobile/app/core/ui/widgets/vakinha_appar.dart';
import 'package:vakinha_burger_mobile/app/core/ui/widgets/vakinha_button.dart';
import 'package:vakinha_burger_mobile/app/core/ui/widgets/vakinha_textFormFild.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: VkAppBar(
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: IntrinsicHeight(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Login',
                    style: context.textTheme.headline6?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: context.theme.primaryColorDark,
                    ),
                  ),
                  Text(
                    'Preencha os campos abaixo para criar o seu cadastro',
                    style: context.textTheme.bodyText1?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: context.theme.primaryColorDark,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const VkTextFormField(label: 'Nome'),
                  const SizedBox(
                    height: 30,
                  ),
                  const VkTextFormField(label: 'Email'),
                  const SizedBox(
                    height: 30,
                  ),
                  const VkTextFormField(label: 'Senha'),
                  const SizedBox(
                    height: 30,
                  ),
                  const VkTextFormField(label: 'Confirmar senha'),
                  const SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: VkButton(
                      onPressed: () {},
                      label: 'Cadastrar',
                      width: context.width,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
