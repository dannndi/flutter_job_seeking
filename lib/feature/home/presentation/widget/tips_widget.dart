import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_job_seeking/core/theme/app_color.dart';

class TipsWidget extends StatefulWidget {
  const TipsWidget({super.key});

  @override
  State<TipsWidget> createState() => _TipsWidgetState();
}

class _TipsWidgetState extends State<TipsWidget> {
  var selectedIndex = 0;
  final tips = [
    "How to create a perfect CV for you",
    "How to see a suitable Job for you",
    "How to create a greate Portofolio",
  ];

  @override
  void initState() {
    Timer.periodic(
      const Duration(seconds: 3),
      (timer) {
        setState(() {
          if (selectedIndex != tips.length - 1) {
            selectedIndex = ++selectedIndex;
          } else {
            selectedIndex = 0;
          }
        });
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: AppColor.primarySwatch,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: -40,
            right: -20,
            child: Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            top: -40,
            right: 80,
            child: Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Wrap(
                spacing: 4,
                children: List.generate(
                  tips.length,
                  (index) {
                    return AnimatedContainer(
                      duration: const Duration(milliseconds: 600),
                      width: selectedIndex == index ? 30 : 10,
                      height: 10,
                      decoration: BoxDecoration(
                        color: selectedIndex == index
                            ? Colors.white
                            : Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24),
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 600),
              child: Row(
                key: UniqueKey(),
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          tips[selectedIndex],
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(
                                color: Colors.white,
                              ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                          ),
                          child: Text(
                            "See Detail",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(color: AppColor.primaryColor),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(width: 72),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
