import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:riderapp/shared/shared.dart';
import 'package:riderapp/shared/styles.dart';

/// A [BottomNavigationBar] that shows an icon on non-selected tabs and an icon
/// as well as a label in a horizontal layout on selected tabs.
///
/// This widget requires a [BottomNavigationCubit] in to be provided to
/// the parent.
class CustomBottomBar extends StatelessWidget {
  /// Initializes a new [CustomBottomBar].
  const CustomBottomBar({
    Key? key,
    this.selectedColorOpacity,
    this.margin = const EdgeInsets.all(AppStyles.spaceTiny),
    this.itemPadding = const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
    this.duration = const Duration(milliseconds: 300),
    this.curve = Curves.easeOutQuint,
  }) : super(key: key);

  /// The opacity of color of the touchable background when the item is selected
  final double? selectedColorOpacity;

  /// A convenience field for the margin surrounding the entire widget.
  final EdgeInsets margin;

  /// The padding of each item.
  final EdgeInsets itemPadding;

  /// The transition duration
  final Duration duration;

  /// The transition curve
  final Curve curve;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    const items = [
      CustomBottomBarItem(
        icon: Icon(
          Icons.home,
          size: 20,
        ),
        title: Text('home'),
      ),
      CustomBottomBarItem(
        icon: Icon(
          Icons.favorite,
          size: 20,
        ),
        title: Text('favorites'),
      ),
      CustomBottomBarItem(
        icon: Icon(
          Icons.wallet,
          size: 20,
        ),
        title: Text('Waller'),
      ),
      CustomBottomBarItem(
        icon: Icon(
          Icons.percent,
          size: 20,
        ),
        title: Text('favorites'),
      ),
      CustomBottomBarItem(
        icon: Icon(
          Icons.person,
          size: 20,
        ),
        title: Text('favorites'),
      ),
    ];
    return
        // Obx(
        //   () {
        //     return
        Material(
      color: AppColors.secondary,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      elevation: 4,
      child: Container(
        color: AppColors.transparent,
        height: 100,
        margin: const EdgeInsets.only(bottom: 2),
        padding: margin,
        child: SafeArea(
          top: false,
          left: false,
          right: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: items
                .map(
                  (item) => TweenAnimationBuilder<double>(
                    key: ValueKey<String>('$item-${items.indexOf(item)}'),
                    tween: Tween(
                      end: 1,
                      // items.indexOf(item) == state.index ? 1 : 0,
                    ),
                    duration: duration,
                    builder: (context, t, _) {
                      final _selectedColor =
                          item.selectedColor ?? AppColors.primary;

                      final _unselectedColor =
                          item.unselectedColor ?? theme.iconTheme.color;
                      return Material(
                        color: AppColors.secondary,
                        child: InkWell(
                          onTap: () {
                            final index = items.indexOf(item);
                            // context
                            //     .read<BottomNavigationCubit>()
                            //     .indexedNavigation(index);
                          },
                          // customBorder: RoundedRectangleBorder(
                          //   borderRadius: BorderRadius.circular(
                          //     AppStyles.radius,
                          //   ),
                          // ),
                          focusColor: _selectedColor.withOpacity(0.1),
                          highlightColor: _selectedColor.withOpacity(0.1),
                          splashColor: _selectedColor.withOpacity(0.1),
                          hoverColor: _selectedColor.withOpacity(0.1),
                          child: Padding(
                            padding: itemPadding -
                                (Directionality.of(context) == TextDirection.ltr
                                    ? EdgeInsets.only(
                                        right: itemPadding.right * t,
                                      )
                                    : EdgeInsets.only(
                                        left: itemPadding.left * t,
                                      )),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconTheme(
                                  data: IconThemeData(
                                    color: Color.lerp(
                                      _unselectedColor,
                                      _selectedColor,
                                      t,
                                    ),
                                    size: 24,
                                  ),
                                  child:
                                      //  items.indexOf(item) == state.index
                                      //     ? item.activeIcon ?? item.icon
                                      //     :
                                      item.icon,
                                ),
                                SizedBox(
                                  height: 20,
                                  child: DefaultTextStyle(
                                    style: TextStyle(
                                      color: Color.lerp(
                                        _selectedColor.withOpacity(0),
                                        _selectedColor,
                                        t,
                                      ),
                                      fontWeight: FontWeight.w600,
                                    ),
                                    child: item.title,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
    //   },
    // );
  }
}

/// A model that holds the data required for a single tab of [CustomBottomBar].
class CustomBottomBarItem {
  /// Initializes a new [CustomBottomBarItem].
  const CustomBottomBarItem({
    required this.icon,
    required this.title,
    this.selectedColor,
    this.unselectedColor,
    this.activeIcon,
  });

  /// An icon to display.
  final Widget icon;

  /// An icon to display when this tab bar is active.
  final Widget? activeIcon;

  /// Text to display, ie `Home`
  final Widget title;

  /// A primary color to use for this tab.
  final Color? selectedColor;

  /// The color to display when this tab is not selected.
  final Color? unselectedColor;
}
