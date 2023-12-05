import 'package:flutter/material.dart';
import 'package:loading_progress/loading_progress.dart';

onTapStartCustomLoadingProgressBtn(BuildContext context) async {
  LoadingProgress.start(
    context,
    gifOrImagePath: 'assets/images/loading.jpeg',
  );
  await Future.delayed(const Duration(seconds: 3));
  LoadingProgress.stop(context);
}
