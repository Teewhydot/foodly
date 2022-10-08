import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final leading;
  final onTap;
  final heading;
  final subHeading;

  const CustomListTile(
      {super.key,
      required this.leading,
      required this.heading,
      required this.subHeading,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leading,
      trailing: const Icon(Icons.arrow_forward_ios),
      title: heading,
      subtitle: subHeading,
      onTap: onTap,
    );
  }
}

class CustomListTileWithSwitch extends StatelessWidget {
  final onTap;
  final heading;
  final subHeading;

  const CustomListTileWithSwitch(
      {super.key,
      required this.heading,
      required this.subHeading,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.notifications),
      trailing: Switch.adaptive(value: false, onChanged: (value) {}),
      title: heading,
      subtitle: subHeading,
      onTap: onTap,
    );
  }
}
