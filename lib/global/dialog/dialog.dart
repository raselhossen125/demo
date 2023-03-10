import 'package:demo/widgets/common_widgets.dart';
import 'package:flutter/material.dart';

class DeleteDialog extends StatelessWidget {
  const DeleteDialog({
    super.key,
    this.onCancelPressed,
    this.onDeletePressed,
  });

  final VoidCallback? onCancelPressed;
  final VoidCallback? onDeletePressed;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 4, left: 16, right: 8),
            child: Row(
              children: [
                const Text(
                  'Please confirm',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.close_outlined,
                        color: Colors.black, size: 22),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16).copyWith(
              bottom: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Are you sure you want to delete?',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(height: 16),
                CustomButtoon(
                  label: 'Delete',
                  height: 34,
                  marginVertical: 0,
                  marginHorizontal: 0,
                  primary: Colors.black,
                  onPressed: onDeletePressed,
                ),
                const SizedBox(height: 12),
                CustomButtoon(
                  label: 'Cancel',
                  height: 34,
                  marginVertical: 0,
                  marginHorizontal: 0,
                  primary: Colors.white,
                  labelColor: Colors.black,
                  isBorder: true,
                  onPressed: onCancelPressed,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
