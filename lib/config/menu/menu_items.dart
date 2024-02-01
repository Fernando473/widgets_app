import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTittle;
  final String link;
  final IconData icon;

  const MenuItem(
      {required this.title,
      required this.subTittle,
      required this.link,
      required this.icon});
}

const List<MenuItem> appMenuItems = [
  MenuItem(
      title: 'Botones',
      subTittle: 'Varios botones de Flutter',
      link: '/buttons',
      icon: Icons.smart_button_outlined),
  MenuItem(
      title: 'Tarjetas',
      subTittle: 'Un contenedor estilizado',
      link: '/cards',
      icon: Icons.credit_card),
  MenuItem(
      title: "Noticias",
      subTittle: "Aqui se encuentra la seccion de noticias",
      link: "/noticias",
      icon: Icons.newspaper_outlined)
];
