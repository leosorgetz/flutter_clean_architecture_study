import 'package:flutter/material.dart';

class AppSwitcher extends StatefulWidget {
  final String textLeft;
  final String textRight;
  final Function(AppSwitcherSelectedSide side)? onClick;
  final Color? disableBackgroundColor;
  final Color? enableBackgroundColor;
  final Duration? duration;
  final double height;
  final AppSwitcherSelectedSide initialSide;
  final Curve curve;

  const AppSwitcher({
    required this.textLeft,
    required this.textRight,
    Key? key,
    this.onClick,
    this.duration,
    this.disableBackgroundColor,
    this.initialSide = AppSwitcherSelectedSide.left,
    this.enableBackgroundColor,
    this.height = 40,
    this.curve = Curves.easeInOut,
  }) : super(key: key);

  @override
  _AppSwitcherState createState() => _AppSwitcherState();
}

class _AppSwitcherState extends State<AppSwitcher>
    with SingleTickerProviderStateMixin {
  late AppSwitcherSelectedSide _selectedSide;
  final BorderRadius _defaultRadius = BorderRadius.circular(50);
  final GlobalKey _buttonKey = GlobalKey(debugLabel: 'appSwitcherKey');
  double? _buttonWidth;
  final Duration _defaultDuration = Duration(milliseconds: 250);

  @override
  void initState() {
    super.initState();
    _selectedSide = widget.initialSide;
    WidgetsBinding.instance!.addPostFrameCallback(_initHeightValues);
  }

  void _initHeightValues(_) {
    setState(() {
      _buttonWidth = _getWidgetWidth(_buttonKey);
    });
  }

  double _getWidgetWidth(GlobalKey key) => key.currentContext!.size!.width;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: _defaultRadius,
        color: widget.disableBackgroundColor ?? Colors.blue[100]!,
      ),
      child: Stack(
        children: [
          AnimatedAlign(
            duration: widget.duration ?? _defaultDuration,
            curve: widget.curve,
            alignment: _selectedSide == AppSwitcherSelectedSide.right
                ? Alignment.topRight
                : Alignment.topLeft,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: _defaultRadius,
                color: widget.enableBackgroundColor ?? Colors.blue[400]!,
              ),
              height: widget.height,
              width: _buttonWidth,
            ),
          ),
          Row(
            children: [
              _buildSwitcherButton(
                key: _buttonKey,
                text: widget.textLeft,
                onTap: () => _changeSide(AppSwitcherSelectedSide.left),
                active: AppSwitcherSelectedSide.left == _selectedSide,
                height: widget.height,
              ),
              _buildSwitcherButton(
                text: widget.textRight,
                height: widget.height,
                onTap: () => _changeSide(AppSwitcherSelectedSide.right),
                active: AppSwitcherSelectedSide.right == _selectedSide,
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _changeSide(
    AppSwitcherSelectedSide sideToChange,
  ) {
    final sholdChangeSide = sideToChange != _selectedSide;
    if (sholdChangeSide) {
      setState(() {
        _selectedSide = sideToChange;
      });
      if (widget.onClick != null) widget.onClick!(_selectedSide);
    }
  }

  Widget _buildSwitcherButton({
    required String text,
    required Function() onTap,
    required double height,
    required bool active,
    Key? key,
  }) =>
      Expanded(
        key: key,
        child: GestureDetector(
          behavior: HitTestBehavior.deferToChild,
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: _defaultRadius,
            ),
            height: height,
            // width: size,
            child: Center(
              child: AnimatedDefaultTextStyle(
                duration: widget.duration ?? _defaultDuration,
                style: active
                    ? TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      )
                    : TextStyle(
                        color: Colors.black.withAlpha(100),
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                child: Text(text),
              ),
            ),
          ),
        ),
      );
}

enum AppSwitcherSelectedSide { left, right }
