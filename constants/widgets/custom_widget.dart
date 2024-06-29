import 'package:flutter/material.dart';

import 'package:simple_ui_project/constants/app_constants.dart';

class CustomWidget extends StatelessWidget {
  final String text;
  final String imageUrl;

  const CustomWidget({super.key, required this.text, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    const listTile = ListTile(
      leading: CircleAvatar(backgroundColor: Colors.black),
      title: Text('harry'),
    );
    var children = [
      listTile,
      const ListTile(
        leading: CircleAvatar(),
        title: Text('waqas'),
      ),
      const ListTile(
        leading: CircleAvatar(),
        title: Text('abdullah'),
      ),
      Image.network(
          'https://cdn.pixabay.com/photo/2016/11/18/17/46/house-1836070_1280.jpg'),
      const Text('empore the new design which inspire'),
      Image.network(
          'https://cdn.pixabay.com/photo/2014/07/10/17/18/large-home-389271_1280.jpg'),
      const Text('enjoy it with full moode'),
      Image.network(
          'https://cdn.pixabay.com/photo/2016/01/23/21/58/new-1158139_1280.jpg'),
      const Text('looking cool and pretty'),
      Image.network(
          'https://cdn.pixabay.com/photo/2016/06/24/10/47/house-1477041_1280.jpg'),
      const SizedBox(height: 100),
      Text(
        text,
        style: const TextStyle(color: Colors.white, fontSize: 16),
      ),
    ];
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(AppConstants.padding),
        margin: const EdgeInsets.all(AppConstants.margin),
        decoration: BoxDecoration(
          color: AppConstants.primaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: children,
        ),
      ),
    );
  }
}
