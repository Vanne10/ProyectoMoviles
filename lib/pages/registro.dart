import 'package:flutter/material.dart';
import 'package:proyecto_moviles/widgets/botones.dart';
import 'package:proyecto_moviles/widgets/label.dart';
import 'package:proyecto_moviles/widgets/textfield.dart';

class RegistroPage extends StatelessWidget {
  const RegistroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () => print('menu'),
            );
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.local_grocery_store_rounded),
            onPressed: () {},
          ),
        ],
        centerTitle: true,
        title: Text(
          'Bodega de Libros',
          style: TextStyle(fontWeight: FontWeight.w200),
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: SafeArea(
          child: Container(
            //toda la pantalla
            height: MediaQuery.of(context).size.height,

            child: Column(
              children: [
                SizedBox(height: 30),
                Text(
                  'Crea tu cuenta en Bodega de libros',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 30),
                _Form(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Form extends StatefulWidget {
  _Form({Key? key}) : super(key: key);

  @override
  __FormState createState() => __FormState();
}

class __FormState extends State<_Form> {
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();
  final nomCtrl = TextEditingController();
  final apeCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        children: [
          CustomInput(
            icono: Icons.person,
            placeHolder: 'Nombre',
            keyboardType: TextInputType.name,
            textController: nomCtrl,
          ),
          CustomInput(
            icono: Icons.person,
            placeHolder: 'Apellido',
            keyboardType: TextInputType.name,
            textController: apeCtrl,
          ),
          CustomInput(
            icono: Icons.mail_outline,
            placeHolder: 'Email',
            keyboardType: TextInputType.emailAddress,
            textController: emailCtrl,
          ),
          CustomInput(
            icono: Icons.lock_outline,
            placeHolder: 'Contrase??a',
            keyboardType: TextInputType.text,
            textController: passCtrl,
            isPassword: true,
          ),
          CustomInput(
            icono: Icons.lock_outline,
            placeHolder: 'Repite tu contrase??a',
            keyboardType: TextInputType.text,
            textController: passCtrl,
            isPassword: true,
          ),
          SizedBox(height: 8),
          Text('______________________ ?? ______________________'),
          SizedBox(height: 20),
          Customlabel(
            texto: 'Registrate con Google',
            color: Color.fromRGBO(146, 184, 31, 1),
            route: 'register',
          ),
          SizedBox(height: 20),
          Customlabel(
            texto: 'He le??do y acepto la politica de privacidad',
            color: Color.fromRGBO(146, 184, 31, 1),
            route: 'register',
          ),
          SizedBox(height: 20),
          CustomButton(
              texto: 'Registrarme',
              onPressed: () {
                // Navigator.pushReplacementNamed(context, 'register');
              }),
        ],
      ),
    );
  }
}
