import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import '../core/theme/app_colors.dart';
import '../core/theme/app_spacing.dart';
import '../core/theme/app_typography.dart';
import '../core/theme/app_radius.dart';

class MultimediaCard extends StatefulWidget {
  const MultimediaCard({super.key});

  @override
  State<MultimediaCard> createState() => _MultimediaCardState();
}

class _MultimediaCardState extends State<MultimediaCard> {
  late final VideoPlayerController _controller;
  bool _initialized = false;
  bool _hasError = false;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(
      'video/intro-video.mp4',
    )..initialize().then((_) {
        if (mounted) {
          setState(() => _initialized = true);
        }
      }).catchError((_) {
        if (mounted) {
          setState(() => _hasError = true);
        }
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _togglePlay() {
    setState(() {
      if (_controller.value.isPlaying) {
        _controller.pause();
      } else {
        _controller.play();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: 'About Me video',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: ClipRRect(
              borderRadius: AppRadius.lg,
              child: _hasError
                  ? Container(
                      color: AppColors.surfaceSecondary,
                      child: const Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.error_outline,
                              color: AppColors.textMuted,
                              size: 32,
                            ),
                            SizedBox(height: AppSpacing.xs),
                            Text(
                              'Video unavailable',
                              style: AppTypography.caption,
                            ),
                          ],
                        ),
                      ),
                    )
                  : Stack(
                      fit: StackFit.expand,
                      children: [
                        _initialized
                            ? VideoPlayer(_controller)
                            : Container(
                                color: AppColors.surfaceSecondary,
                                child: const Center(
                                  child: SizedBox(
                                    width: 24,
                                    height: 24,
                                    child: CircularProgressIndicator(
                                      color: AppColors.accent,
                                    ),
                                  ),
                                ),
                              ),
                        Positioned.fill(
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: _togglePlay,
                              child: Center(
                                child: Container(
                                  width: 56,
                                  height: 56,
                                  decoration: const BoxDecoration(
                                    color: AppColors.mediaOverlay,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    _controller.value.isPlaying
                                        ? Icons.pause
                                        : Icons.play_arrow,
                                    color: AppColors.surface,
                                    size: 32,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
            ),
          ),
          const SizedBox(height: AppSpacing.md),
          const Text(
            'Perjalanan belajar & project pilihan saya.',
            style: AppTypography.body,
          ),
        ],
      ),
    );
  }
}
