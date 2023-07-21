import 'package:flutter/cupertino.dart';
import 'package:page_transition/page_transition.dart';


class PageMoveWithAnimation {
  final Curve? _curves;
  final int? _duration;
  final int? _reversDuration;
  final BuildContext _context;
  final Widget _child;
  final PageTransitionType? transitionType;

  PageMoveWithAnimation({
    Curve? curves,
    int? duration,
    int? reversDuration,
    required this.transitionType,
    required BuildContext context,
    required Widget child,
  })
      : _curves = curves,
        _duration = duration,
        _reversDuration = reversDuration,
        _context = context,
        _child = child;

  void animationPushAndRemove() {
    Navigator.pushAndRemoveUntil(
      _context,
      PageTransition(
        child: _child,
        type: transitionType ?? PageTransitionType.fade,
        curve: _curves ?? Curves.ease,
        duration: Duration(milliseconds: _duration ?? 300),
        reverseDuration: Duration(milliseconds: _reversDuration ?? 300),
      ),
          (route) => false,
    );
  }

  void animationPush() {
    Navigator.push(
      _context,
      PageTransition(
        child: _child,
        type: transitionType ?? PageTransitionType.fade,
        curve: _curves ?? Curves.ease,
        duration: Duration(milliseconds: _duration ?? 300),
        reverseDuration: Duration(milliseconds: _reversDuration ?? 300),),
    );
  }
}