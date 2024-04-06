import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class HoverContainer extends StatefulWidget {
  const HoverContainer({super.key});

  @override
  State<HoverContainer> createState() => _HoverContainerState();
}

class _HoverContainerState extends State<HoverContainer> {
  Color defaultColor = const Color.fromARGB(255, 25, 24, 25);
  bool onHover = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          onHover = true;
        });
      },
      onExit: (event) {
        setState(() {
          onHover = false;
        });
      },
      child: AnimatedContainer(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: onHover ? Theme.of(context).primaryColor : defaultColor,
        ),
        duration: 400.ms,
        curve: Curves.slowMiddle,
        width: 100,
        height: 100,
        margin: const EdgeInsets.all(2),
      ),
    );
  }
}
