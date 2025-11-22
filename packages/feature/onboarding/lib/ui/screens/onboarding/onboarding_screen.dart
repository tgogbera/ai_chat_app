import 'dart:math';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:onboarding/constants/constants.dart';
import 'package:onboarding/ui/screens/onboarding/pages/community/community_dark_card_content.dart';
import 'package:onboarding/ui/screens/onboarding/pages/community/community_light_card_content.dart';
import 'package:onboarding/ui/screens/onboarding/pages/community/community_text_column.dart';
import 'package:onboarding/ui/screens/onboarding/pages/education/education_dark_card_content.dart';
import 'package:onboarding/ui/screens/onboarding/pages/education/education_light_card_content.dart';
import 'package:onboarding/ui/screens/onboarding/pages/education/education_text_column.dart';
import 'package:onboarding/ui/screens/onboarding/pages/work/work_dark_card_content.dart';
import 'package:onboarding/ui/screens/onboarding/pages/work/work_light_card_content.dart';
import 'package:onboarding/ui/screens/onboarding/pages/work/work_text_column.dart';
import 'package:onboarding/ui/screens/onboarding/widgets/header.dart';
import 'package:onboarding/ui/screens/onboarding/widgets/onboarding_page.dart';
import 'package:onboarding/ui/screens/onboarding/widgets/onboarding_page_indicator.dart';
import 'widgets/next_page_button.dart';
import 'widgets/ripple.dart';
import 'package:ui_kit/widgets/gradient_background.dart';

class OnboardingScreen extends StatefulWidget {
  final double screenHeight;

  const OnboardingScreen({super.key, required this.screenHeight});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> with TickerProviderStateMixin {
  late final AnimationController _cardsAnimationController;
  late final AnimationController _pageIndicatorAnimationController;
  late final AnimationController _rippleAnimationController;

  late Animation<Offset> _slideAnimationLightCard;
  late Animation<Offset> _slideAnimationDarkCard;
  late Animation<double> _pageIndicatorAnimation;
  late Animation<double> _rippleAnimation;

  int _currentPage = 1;

  @override
  void initState() {
    super.initState();
    _cardsAnimationController = AnimationController(vsync: this, duration: cardAnimationDuration);
    _pageIndicatorAnimationController = AnimationController(
      vsync: this,
      duration: buttonAnimationDuration,
    );
    _rippleAnimationController = AnimationController(
      vsync: this,
      duration: rippleAnimationDuration,
    );

    _rippleAnimation = Tween<double>(
      begin: 0.0,
      end: widget.screenHeight,
    ).animate(CurvedAnimation(parent: _rippleAnimationController, curve: Curves.easeIn));

    _setPageIndicatorAnimation();
    _setCardsSlideOutAnimation();
  }

  @override
  void dispose() {
    _cardsAnimationController.dispose();
    _pageIndicatorAnimationController.dispose();
    _rippleAnimationController.dispose();
    super.dispose();
  }

  bool get isFirstPage => _currentPage == 1;

  Widget _getPage() {
    switch (_currentPage) {
      case 1:
        return OnboardingPage(
          number: 1,
          lightCardChild: const CommunityLightCardContent(),
          darkCardChild: const CommunityDarkCardContent(),
          lightCardOffsetAnimation: _slideAnimationLightCard,
          darkCardOffsetAnimation: _slideAnimationDarkCard,
          textColumn: const CommunityTextColumn(),
        );
      case 2:
        return OnboardingPage(
          number: 2,
          lightCardChild: const EducationLightCardContent(),
          darkCardChild: const EducationDarkCardContent(),
          lightCardOffsetAnimation: _slideAnimationLightCard,
          darkCardOffsetAnimation: _slideAnimationDarkCard,
          textColumn: const EducationTextColumn(),
        );
      case 3:
        return OnboardingPage(
          number: 3,
          lightCardChild: const WorkLightCardContent(),
          darkCardChild: const WorkDarkCardContent(),
          lightCardOffsetAnimation: _slideAnimationLightCard,
          darkCardOffsetAnimation: _slideAnimationDarkCard,
          textColumn: const WorkTextColumn(),
        );
      default:
        throw Exception("Page with number '$_currentPage' does not exist.");
    }
  }

  void _setCardsSlideInAnimation() {
    setState(() {
      _slideAnimationLightCard = Tween<Offset>(
        begin: const Offset(3.0, 0.0),
        end: Offset.zero,
      ).animate(CurvedAnimation(parent: _cardsAnimationController, curve: Curves.easeOut));
      _slideAnimationDarkCard = Tween<Offset>(
        begin: const Offset(1.5, 0.0),
        end: Offset.zero,
      ).animate(CurvedAnimation(parent: _cardsAnimationController, curve: Curves.easeOut));
      _cardsAnimationController.reset();
    });
  }

  void _setCardsSlideOutAnimation() {
    setState(() {
      _slideAnimationLightCard = Tween<Offset>(
        begin: Offset.zero,
        end: const Offset(-3.0, 0.0),
      ).animate(CurvedAnimation(parent: _cardsAnimationController, curve: Curves.easeIn));
      _slideAnimationDarkCard = Tween<Offset>(
        begin: Offset.zero,
        end: const Offset(-1.5, 0.0),
      ).animate(CurvedAnimation(parent: _cardsAnimationController, curve: Curves.easeIn));
      _cardsAnimationController.reset();
    });
  }

  void _setPageIndicatorAnimation({bool isClockwiseAnimation = true}) {
    final double multiplicator = isClockwiseAnimation ? 2 : -2;

    setState(() {
      _pageIndicatorAnimation = Tween<double>(
        begin: 0.0,
        end: multiplicator * pi,
      ).animate(CurvedAnimation(parent: _pageIndicatorAnimationController, curve: Curves.easeIn));
      _pageIndicatorAnimationController.reset();
    });
  }

  void _setNextPage(int nextPageNumber) {
    setState(() {
      _currentPage = nextPageNumber;
    });
  }

  Future<void> _nextPage() async {
    switch (_currentPage) {
      case 1:
        if (_pageIndicatorAnimation.status == AnimationStatus.dismissed) {
          _pageIndicatorAnimationController.forward();
          await _cardsAnimationController.forward();
          _setNextPage(2);
          _setCardsSlideInAnimation();
          await _cardsAnimationController.forward();
          _setCardsSlideOutAnimation();
          _setPageIndicatorAnimation(isClockwiseAnimation: false);
        }
        break;
      case 2:
        if (_pageIndicatorAnimation.status == AnimationStatus.dismissed) {
          _pageIndicatorAnimationController.forward();
          await _cardsAnimationController.forward();
          _setNextPage(3);
          _setCardsSlideInAnimation();
          await _cardsAnimationController.forward();
        }
        break;
      case 3:
        if (_pageIndicatorAnimation.status == AnimationStatus.completed) {
          await _goToNextPage();
        }
        break;
    }
  }

  Future<void> _goToNextPage() async {
    await _rippleAnimationController.forward();
    if (mounted) {
      context.go('/');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBlue,
      body: GradientBackground(
        child: Stack(
          children: <Widget>[
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(paddingL),
                child: Column(
                  children: <Widget>[
                    Header(onSkip: _goToNextPage),
                    Expanded(child: _getPage()),
                    AnimatedBuilder(
                      animation: _pageIndicatorAnimation,
                      builder: (_, Widget? child) {
                        return OnboardingPageIndicator(
                          angle: _pageIndicatorAnimation.value,
                          currentPage: _currentPage,
                          child: child!,
                        );
                      },
                      child: NextPageButton(onPressed: _nextPage),
                    ),
                  ],
                ),
              ),
            ),
            AnimatedBuilder(
              animation: _rippleAnimation,
              builder: (_, Widget? child) {
                return Ripple(radius: _rippleAnimation.value);
              },
            ),
          ],
        ),
      ),
    );
  }
}
