import 'package:material_ui/material_ui.dart';

class const SkeletonLoader({
  super.key,
  required this.width,
  required this.height,
  this.borderRadius = const BorderRadius.all(Radius.circular(8)),
}) extends StatefulWidget {
  final double width;
  final double height;
  final BorderRadius borderRadius;

  @override
  State<SkeletonLoader> createState() => _SkeletonLoaderState();
}

class _SkeletonLoaderState extends State<SkeletonLoader>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, _) {
        final value = _controller.value;
        return Container(
          width: widget.width,
          height: widget.height,
          decoration: BoxDecoration(
            borderRadius: widget.borderRadius,
            gradient: LinearGradient(
              colors: [Colors.grey[800]!, Colors.grey[700]!, Colors.grey[800]!],
              stops: const [0.1, 0.5, 0.9],
              begin: Alignment(-1 + value * 2, -0.3),
              end: Alignment(1 + value * 2, 0.3),
            ),
          ),
        );
      },
    );
  }
}
