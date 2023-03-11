import 'package:demo/global/dialog/dialog.dart';
import 'package:demo/global/function/function.dart';
import 'package:demo/global/loading/loading.dart';
import 'package:demo/views/socket_page.dart';
import 'package:demo/widgets/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<Map> list = [
    {
      'Rasel': 1000000,
      'Rifat': 2000000,
      'Foyzur': 3000000,
    },
    {
      10: 100,
      20: 200,
      30: 300,
    },
    {
      1: 'One',
      2: 'Two',
      3: 'Three',
    },
  ];

  List<Map> list2 = [
    {
      'id': 01,
      'name': 'Rasel',
    },
    {
      'id': 02,
      'name': 'Rifat',
    },
    {
      'id': 03,
      'name': 'Foyzur',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo project'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Loading(),
            CustomButtoon(
              marginVertical: 8,
              label: 'Loading Dialog',
              isDisable: false,
              onPressed: () {
                showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (context) => const LoadingDialog(),
                );
              },
            ),
            CustomButtoon(
              marginVertical: 8,
              label: 'Delete Dialog',
              isDisable: false,
              onPressed: () {
                showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (context) => DeleteDialog(
                    onCancelPressed: () => Navigator.of(context).pop(),
                    onDeletePressed: () {},
                  ),
                );
              },
            ),
            CustomButtoon(
              marginVertical: 8,
              label: 'Show Snakbar',
              isDisable: false,
              onPressed: () {
                showGetSnackBar(
                  title: 'Required',
                  message: 'Username is required field',
                );
              },
            ),
            CustomButtoon(
              marginVertical: 8,
              label: 'Show Snakbar',
              isDisable: false,
              onPressed: () {
                showSnackBar(
                  context: context,
                  msg: 'Delete',
                  label: 'Undo',
                  lableTextColor: Colors.red,
                  onTap: () {},
                );
              },
            ),
            CustomButtoon(
              marginVertical: 8,
              label: 'getValueFromListOfMap',
              isDisable: false,
              onPressed: () {
                var val = getValueFromListOfMap(dataList: list, K: 2);
                print(val);
                var valList =
                    getValueListFromListOfMap(dataList: list2, K: 'name');
                print(valList.map((e) => e.toString().toUpperCase()));
              },
            ),
            CustomButtoon(
              marginVertical: 8,
              label: 'Socket',
              // isDisable: false,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SocketPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
