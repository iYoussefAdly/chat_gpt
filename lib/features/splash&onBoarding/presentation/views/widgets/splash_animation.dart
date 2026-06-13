import 'package:flutter/material.dart';

class SplashAnimatedImage extends StatefulWidget {
  final String assetPath;
  final EdgeInsets padding;

  const SplashAnimatedImage({
    Key? key,
    required this.assetPath,
    this.padding = const EdgeInsets.symmetric(horizontal: 57),
  }) : super(key: key);

  @override
  State<SplashAnimatedImage> createState() => _SplashAnimatedImageState();
}

class _SplashAnimatedImageState extends State<SplashAnimatedImage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _scaleAnimation;
  late final Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1400),
    );

    _scaleAnimation = Tween<double>(
      begin: 0.85,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOutBack));

    _fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding,
      child: FadeTransition(
        opacity: _fadeAnimation,
        child: ScaleTransition(
          scale: _scaleAnimation,
          child: Image.asset(widget.assetPath),
        ),
      ),
    );
  }
}
