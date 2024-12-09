
import 'package:flutter/material.dart';


Future<void> modal(
    BuildContext context, {
      required Widget child
    }) async {
  showModalBottomSheet<void>(
    backgroundColor: Colors.white,
    useRootNavigator: true,
    isDismissible: true,
    isScrollControlled: true,
    context: context,
    enableDrag: false,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.0),
    ),
    builder: (BuildContext context) {
      return SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height - 80,
          padding: const EdgeInsets.all(8),
          child: Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 24),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                ),
                child: child,
              ),
              Positioned(
                right: 8,
                top: 8,
                child: InkWell(
                  onTap: () => Navigator.pop(context),
                  child: const Icon(
                    Icons.close,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
