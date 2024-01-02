import 'package:flutter/material.dart';
import 'package:ok_app/config/color_theme.dart';

class UnitsItemWidget extends StatelessWidget {
  final int index;

  const UnitsItemWidget({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(color: Colors.grey.withOpacity(0.1)),
        ),
        borderRadius: index == 0
            ? const BorderRadius.vertical(
                top: Radius.circular(30),
              )
            : BorderRadius.zero,
      ),
      child: Row(
        children: [
          SizedBox(
            width: 90,
            child: Center(
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Container(
                    width: 56,
                    height: 56,
                    decoration: BoxDecoration(
                      color: ColorTheme.mainBarBackgroundFrom,
                      borderRadius: const BorderRadius.all(Radius.circular(28)),
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: ColorTheme.accent,
                      borderRadius: const BorderRadius.all(Radius.circular(25)),
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          index.toString(),
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            height: 1,
                            color: ColorTheme.reverseMainText,
                          ),
                        ),
                        Text(
                          'unit',
                          style: TextStyle(
                            fontSize: 11,
                            height: 1.2,
                            color: ColorTheme.reverseMainText,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Настоящее время Present Simple',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Text('item $index'),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 50,
            child: Icon(Icons.arrow_forward_ios,
                color: Colors.grey.withOpacity(0.3)),
          ),
        ],
      ),
    );
  }
}
