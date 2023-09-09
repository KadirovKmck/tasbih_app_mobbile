import 'package:flutter/material.dart';

class Animetions extends StatefulWidget {
  const Animetions({Key? key}) : super(key: key);

  @override
  _AnimetionsState createState() => _AnimetionsState();
}

class _AnimetionsState extends State<Animetions> {
  @override
  Widget build(BuildContext context) {
    return CoreButton(text: "", onTap: () {});
  }
}

class CoreButton extends StatefulWidget {
  final String text;
  final VoidCallback? onTap;

  const CoreButton({required this.text, this.onTap});

  @override
  _CoreButtonState createState() => _CoreButtonState();
}

class _CoreButtonState extends State<CoreButton>
    with SingleTickerProviderStateMixin {
  static const clickAnimationDurationMillis = 10;

  double _scaleTransformValue = 1;

  // needed for the "click" tap effect
  late final AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: clickAnimationDurationMillis),
      lowerBound: 0.0,
      upperBound: 0.05,
    )..addListener(() {
        setState(() => _scaleTransformValue = 1 - animationController.value);
      });
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  void _shrinkButtonSize() {
    animationController.forward();
  }

  void _restoreButtonSize() {
    Future.delayed(
      const Duration(milliseconds: clickAnimationDurationMillis),
      () => animationController.reverse(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onTap?.call();
        _shrinkButtonSize();
        _restoreButtonSize();
      },
      onTapDown: (_) => _shrinkButtonSize(),
      onTapCancel: _restoreButtonSize,
      child: Transform.scale(
        scale: _scaleTransformValue,
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xFFC8C8C8),
            borderRadius: BorderRadius.circular(350),
          ),
          child: Center(
            child: Text(
              widget.text,
            ),
          ),
        ),
      ),
    );
  }
}
