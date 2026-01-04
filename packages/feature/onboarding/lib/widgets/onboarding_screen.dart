import 'package:flutter/material.dart';
import 'package:onboarding/widgets/page_content.dart';
import 'package:ui_kit/gen/assets.gen.dart';


class OnboardingScreen extends StatefulWidget {
  final VoidCallback onFinished;
  const OnboardingScreen({super.key, required this.onFinished});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final pages = [
    PageContent(
      animation: Assets.lottie.ai.lottie(package: 'ui_kit'),
      title: 'Smart AI Assistant',
      subtitle: 'Have meaningful conversations and get helpful answers quickly.',
    ),
    PageContent(
      animation: Assets.lottie.aiAutomation.lottie(package: 'ui_kit'),
      title: 'Automate Tasks',
      subtitle: 'Let AI help with repetitive tasks and speed up your workflow.',
    ),
    PageContent(
      animation: Assets.lottie.aiCpu.lottie(package: 'ui_kit'),
      title: 'Powerful Performance',
      subtitle: 'Fast, secure, and ready to assist whenever you need it.',
    ),
  ];

  void _skip() {
    widget.onFinished();
  }

  void _next() {
    if (_currentPage < 2) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      _skip();
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [TextButton(onPressed: _skip, child: const Text('Skip'))],
              ),
            ),
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (i) => setState(() => _currentPage = i),
                children: pages,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: List.generate(pages.length, (index) {
                      final isActive = index == _currentPage;
                      return AnimatedContainer(
                        duration: const Duration(milliseconds: 200),
                        margin: const EdgeInsets.symmetric(horizontal: 4.0),
                        width: isActive ? 16 : 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: isActive ? Theme.of(context).primaryColor : Colors.grey[400],
                          borderRadius: BorderRadius.circular(8),
                        ),
                      );
                    }),
                  ),
                  ElevatedButton(
                    onPressed: _next,
                    child: Text(_currentPage < pages.length - 1 ? 'Next' : 'Get started'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
