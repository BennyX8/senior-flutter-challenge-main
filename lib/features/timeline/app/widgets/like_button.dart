import 'package:flutter/material.dart';

class LikeActionButon extends StatefulWidget {
  final bool liked;
  final bool loading;
  final void Function(bool) onLike;

  const LikeActionButon({
    Key? key,
    required this.liked,
    required this.loading,
    required this.onLike,
  }) : super(key: key);

  @override
  State<LikeActionButon> createState() => _LikeActionButonState();
}

class _LikeActionButonState extends State<LikeActionButon> {
  bool liked = false;

  @override
  void initState() {
    super.initState();

    liked = widget.liked;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          splashRadius: 32.0,
          onPressed: () {
            setState(() {
              liked = !liked;
            });

            widget.onLike(liked);
          },
          icon: Stack(
            alignment: Alignment.center,
            children: [
              const Icon(
                Icons.favorite,
                size: 24.0,
              ),
              widget.loading
                  ? const SizedBox(
                      width: 15.0,
                      height: 3.0,
                      child: LinearProgressIndicator(
                        color: Colors.grey,
                        backgroundColor: Colors.transparent,
                      ),
                    )
                  : const SizedBox()
            ],
          ),
        ),
      ],
    );
  }
}
