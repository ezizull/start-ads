import 'package:flutter/material.dart';
import 'package:startercode_project/utils/typography.dart' as AppText;

class DashboardIconsMenu extends StatelessWidget {
  const DashboardIconsMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double swidth = MediaQuery.of(context).size.width;
    double spacing = 38; // figma = '32'

    return Container(
      margin: EdgeInsets.only(top: spacing, bottom: spacing / 2),
      child: Wrap(
        spacing: 19,
        direction: Axis.vertical,
        children: [
          Container(
            width: swidth,
            padding: EdgeInsets.symmetric(horizontal: spacing),
            child: Wrap(
              direction: Axis.horizontal,
              alignment: WrapAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: null,
                  child: SizedBox(
                    width: 82,
                    height: 112,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 65,
                          child: Image.asset(
                            "assets/images/icons/script_icon.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Flexible(
                          child: Text(
                            'Script',
                            style: AppText.PopsIcon,
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: null,
                  child: SizedBox(
                    width: 82,
                    height: 112,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 65,
                          child: Image.asset(
                            "assets/images/icons/kamus_icon.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Flexible(
                          child: Text(
                            'Kamus CS',
                            style: AppText.PopsIcon,
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: null,
                  child: SizedBox(
                    width: 82,
                    height: 112,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 65,
                          child: Image.asset(
                            "assets/images/icons/contact_management_icon.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Flexible(
                          child: Text(
                            'Contact Management',
                            style: AppText.PopsIcon,
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: swidth,
            padding: EdgeInsets.symmetric(horizontal: spacing),
            child: Wrap(
              direction: Axis.horizontal,
              alignment: WrapAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: null,
                  child: SizedBox(
                    width: 82,
                    height: 112,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 65,
                          child: Image.asset(
                            "assets/images/icons/campaign_icon.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Flexible(
                          child: Text(
                            'Campaign',
                            style: AppText.PopsIcon,
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: null,
                  child: SizedBox(
                    width: 82,
                    height: 112,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 65,
                          child: Image.asset(
                            "assets/images/icons/billing_icon.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Flexible(
                          child: Text(
                            'Billing',
                            style: AppText.PopsIcon,
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: null,
                  child: SizedBox(
                    width: 82,
                    height: 112,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 65,
                          child: Image.asset(
                            "assets/images/icons/settings_icon.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Flexible(
                          child: Text(
                            'Settings',
                            style: AppText.PopsIcon,
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}