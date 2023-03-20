import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:yuv_quiz/src/page/reduce_waste/widget/reduce_waste_content.dart';
import 'package:yuv_quiz/src/shared/widget/close_button.dart';

class ReduceWastePage extends HookConsumerWidget {
  const ReduceWastePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DraggableScrollableSheet(
      initialChildSize: 0.76,
      builder: (context, scrollController) {
        return Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(20.0),
            ),
          ),
          child: Stack(
            children: [
              const SizedBox(width: double.infinity, height: double.infinity),
              // Back Button
              Positioned(
                top: 35.0,
                left: 35.0,
                child: CustomCloseButton(
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ),
              const Positioned.fill(
                child: ReduceWasteContent(),
              ),
            ],
          ),
        );
      },
    );
  }
}