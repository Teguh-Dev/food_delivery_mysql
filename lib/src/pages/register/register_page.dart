// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_delivery_mysql/src/pages/register/register_controller.dart';
import 'package:get/get.dart';

class RegisterPage extends StatelessWidget {
  RegisterController con = Get.put(RegisterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        _backgroundCover(context),
        _boxForm(context),
        _imageUser(),
        _buttonBack(),
        Column(
          //WIDGET YANG BERFUNGSI UNTUK MENAMPILKAN WIDGET VERTICAL
          children: [_textAppName()],
        ),
      ],
    ));
  }

  Widget _buttonBack() {
    return SafeArea(
        child: Container(
      margin: EdgeInsets.only(left: 20, top: 20),
      child: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back_ios, color: Colors.white, size: 30)),
    ));
  }

  Widget _backgroundCover(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.35,
      color: Colors.amber,
    );
  }

  Widget _textAppName() {
    return Text('DELIVERY MYSQL',
        style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black));
  }

  Widget _boxForm(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.75,
        margin: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.245,
            left: 40,
            right: 40),
        decoration: BoxDecoration(color: Colors.white, boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.black54, blurRadius: 15, offset: Offset(0, 0.75))
        ]),
        child: SingleChildScrollView(
          child: Column(
            children: [
              _textYourInfo(),
              _textFieldEmail(),
              _textFieldName(),
              _textFieldLastName(),
              _textFieldPhone(),
              _textFieldPassword(),
              _textFieldConfirmPassword(),
              _buttonRegister()
            ],
          ),
        ));
  }

  Widget _textYourInfo() {
    return Container(
        margin: EdgeInsets.only(top: 20, bottom: 20),
        child: Text(
          'Register Form',
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        ));
  }

  Widget _textFieldEmail() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
      child: TextField(
        controller: con.emailController,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            hintText: 'Email anda', prefixIcon: Icon(Icons.email)),
      ),
    );
  }

  Widget _textFieldName() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
        child: TextField(
          controller: con.nameController,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
              hintText: 'Nama depan anda', prefixIcon: Icon(Icons.person)),
        ));
  }

  Widget _textFieldLastName() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
        child: TextField(
          controller: con.lastnameController,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
              hintText: 'Nama belakang anda', prefixIcon: Icon(Icons.person)),
        ));
  }

  Widget _textFieldPhone() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
        child: TextField(
            controller: con.phoneController,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              hintText: 'No telepon anda',
              prefixIcon: Icon(Icons.phone),
            )));
  }

  Widget _textFieldPassword() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
      child: TextField(
        controller: con.passwordController,
        keyboardType: TextInputType.text,
        obscureText: true,
        decoration: InputDecoration(
            hintText: 'Masukan password', prefixIcon: Icon(Icons.lock)),
      ),
    );
  }

  Widget _textFieldConfirmPassword() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
        child: TextField(
          controller: con.confirmPasswordController,
          keyboardType: TextInputType.text,
          obscureText: true,
          decoration: InputDecoration(
            hintText: 'Konfirmasi Password',
            prefixIcon: Icon(Icons.phone),
          ),
        ));
  }

  Widget _buttonRegister() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 25),
      child: ElevatedButton(
          onPressed: () => con.register(),
          style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 12)),
          child: Text('REGISTER',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold))),
    );
  }

  //* PRIVATE FUNCTION
  Widget _imageUser() {
    return SafeArea(
      child: GestureDetector(
        onTap: () {},
        child: Container(
            margin: EdgeInsets.only(top: 20),
            alignment: Alignment.topCenter,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 53,
              backgroundImage: AssetImage('assets/img/user_profile.png'),
            )),
      ),
    );
  }
}
