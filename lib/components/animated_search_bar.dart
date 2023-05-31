import 'package:flutter/material.dart';

class AnimatedSearchBar extends StatefulWidget {
  final bool expanded;
  const AnimatedSearchBar({Key? key, required this.expanded}) : super(key: key);

  @override
  _AnimatedSearchBarState createState() => _AnimatedSearchBarState();
}

class _AnimatedSearchBarState extends State<AnimatedSearchBar> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      width: widget.expanded ? MediaQuery.of(context).size.width - 20 : 50,
      height: 40,
      decoration: widget.expanded
          ? BoxDecoration(
              borderRadius: BorderRadius.circular(33),
              color: Colors.white,
              boxShadow: kElevationToShadow[6])
          : null,
      child: Row(
        children: [
          Material(
            type: MaterialType.transparency,
            child: IconButton(
              onPressed: () {
                setState(() {});
              },
              icon: Icon(
                widget.expanded == true ? Icons.close : Icons.search,
                color: widget.expanded == true ? Colors.grey : Colors.white,
              ),
            ),
          ),
          Expanded(
              child: Container(
            child: widget.expanded == true
                ? const TextField(
                    decoration: InputDecoration(
                        hintText: 'Search', border: InputBorder.none),
                  )
                : null,
          )),
        ],
      ),
    );
  }
}
