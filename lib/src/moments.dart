import 'package:flutter/widgets.dart';

class Moments extends StatefulWidget {
  const Moments({super.key});

  @override
  State<Moments> createState() => _MomentsState();
}

class _MomentsState extends State<Moments> {
  late final PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final left = MediaQuery.sizeOf(context).width * 0.3;

    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTapDown: (tap) {
        if (tap.globalPosition.dx > left) {
          pageController.jumpToPage((pageController.page?.round() ?? 0) + 1);
        } else {
          pageController.jumpToPage((pageController.page?.round() ?? 0) - 1);
        }
      },
      child: PageView.builder(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Center(
            child: Text("Hello World $index"),
          );
        },
      ),
    );
  }
}
