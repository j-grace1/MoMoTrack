import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vizier/config/styles/colors/app_colors.dart';
import 'package:vizier/config/styles/dimensions/app_dimensions.dart';

class OnboardingItemContent extends StatelessWidget {
  final int pageIndex;
  final String title;
  final String description;
  final String imageAsset;
  final bool isActive;

  const OnboardingItemContent({
    required this.pageIndex,
    required this.title,
    required this.description,
    required this.imageAsset,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        SvgPicture.asset(imageAsset),
        SizedBox(
          height: AppDimensions.padding.defaultValue,
        ),
        _buildTitle(context),
        const Spacer(),
        _buildDescription(context),
      ],
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headline2,
      textAlign: TextAlign.center,
    );
  }

  Widget _buildDescription(BuildContext context) {
    return Text(
      description,
      style: Theme.of(context).textTheme.bodyText2?.copyWith(
            color: AppColors.gray200,
          ),
      textAlign: TextAlign.center,
    );
  }
}
