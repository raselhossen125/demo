import 'package:demo/global/dialog/dialog.dart';
import 'package:demo/global/function/function.dart';
import 'package:demo/global/loading/loading.dart';
import 'package:demo/widgets/common_widgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const routeName = 'home-page';

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
          ],
        ),
      ),
    );
  }
}
