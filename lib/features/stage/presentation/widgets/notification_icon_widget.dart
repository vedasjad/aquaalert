import 'package:flutter/material.dart';

import '../../../../app/configs/size_config.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({
    required this.onTap,
    required this.iconPath,
    super.key,
  });
  final VoidCallback onTap;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(
              SizeConfig.width_8,
            ),
            height: SizeConfig.width_38,
            width: SizeConfig.width_38,
            child: Image.asset(
              iconPath,
              height: SizeConfig.width_16,
              width: SizeConfig.width_16,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            width: SizeConfig.width_8,
          ),
        ],
      ),
    );
  }
}
