import 'package:flutter/material.dart';
import 'package:petology/Constants/styles.dart';

class MenuItem extends StatefulWidget {
  String? title;
  GestureTapCallback? onTap;

  MenuItem({required this.title,this.onTap});

  @override
  State<MenuItem> createState() => _MenuItemState();
}

class _MenuItemState extends State<MenuItem> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 75),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.title!,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: white,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            if (isHover)
              Container(
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(30),
                ),
                height: 2,
                width: 60,
              )
          ],
        ),
      ),
    );
  }
}
