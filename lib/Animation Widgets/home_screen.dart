import 'package:animation_part/Animation%20Widgets/slide_transition.dart';
import 'package:flutter/material.dart';
import 'animated_align.dart';
import 'animated_container.dart';
import 'animated_crossfade.dart';
import 'animated_opacity.dart';
import 'animated_positioned.dart';
import 'animated_switcher.dart';
import 'animateddefaulttextStyle.dart';
import 'animatedicon.dart';
import 'animatedlist.dart';
import 'animatedmodalbarrier.dart';
import 'animatedpadding.dart';
import 'animatedphysicalmodel.dart';
import 'animatedsize.dart';
import 'animatedtheme.dart';
import 'animatedwidget.dart';
import 'decoratedbox_transition.dart';
import 'defaulttextstyle_trasition.dart';
import 'fade_transition.dart';
import 'lmplicitlyanimatedwidget.dart';
import 'positioned_transition.dart';
import 'rotation_transition.dart';
import 'scale_transition.dart';
import 'size_transition.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PageView(
          children: [
            const AnimatedContainerExample(),
            const AnimatedOpacityExample(),
            const AnimatedPositionedExample(),
            const AnimatedAlignExample(),
            const AnimatedCrossFadeExample(),
            const AnimatedSwitcherExample(),
            const FadeTransitionExample(),
            ScaleTransitionExample(),
            const SlideTransitionExample(),
            const RotationTransitionExample(),
            const SizeTransitionExample(),
            const PositionedTransitionExample(),
            const DecoratedBoxTransitionExample(),
            const DefaultTextStyleTransitionExample(),
            const AnimatedModalBarrierExample(),
            const AnimatedListExample(),
            const AnimatedIconExample(),
            const AnimatedPhysicalModelExample(),
            const AnimatedSizeExample(),
            const AnimatedPaddingExample(),
            // TweenAnimationBuilderExample(),
            // AnimatedBuilderExample(),
            const AnimatedDefaultTextStyleExample(),
            const AnimatedThemeExample(),
            const AnimatedWidgetExample(),
            const ImplicitlyAnimatedWidgetExample(),
          ],
        ),
      ),
    );
  }
}
