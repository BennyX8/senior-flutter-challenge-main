import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class KAppBar extends AppBar {
  KAppBar({
    super.key,
    SystemUiOverlayStyle? overlayStyle,
    required String? title,
    TextStyle? titleStyle,
    bool? centerTitle,
    bool canPop = true,
    double? height,
    Color? background,
    double? elevation,
    Widget? leading,
    List<Widget>? actions,
  }) : super(
          title: AppBarTitle(
            title: title ?? '',
            style: titleStyle ??
                const TextStyle(
                  color: Colors.grey,
                ),
          ),
          backgroundColor: Colors.transparent,
          elevation: elevation ?? 0.0,
          centerTitle: centerTitle ?? false,
          systemOverlayStyle: overlayStyle ?? SystemUiOverlayStyle.light,
          leading: leading ??
              (canPop ? const LeadingIcon() : const SizedBox.shrink()),
          toolbarHeight: height ?? 60,
          actions: actions,
        );
}

// AppBar title
class AppBarTitle extends StatelessWidget {
  final String title;
  final TextStyle? style;

  const AppBarTitle({super.key, required this.title, this.style});

  @override
  Widget build(BuildContext context) {
    return Text(title, style: style);
  }
}

//Leading appbar icon
class LeadingIcon extends StatelessWidget {
  const LeadingIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      splashRadius: 26.0,
      onPressed: () => Navigator.pop(context),
      icon: const Icon(
        Icons.chevron_left,
        color: Colors.grey,
        size: 32.0,
      ),
    );
  }
}
