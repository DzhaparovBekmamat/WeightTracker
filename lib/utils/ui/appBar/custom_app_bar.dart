import 'package:flutter/material.dart';

import '../../../constants/project_icons.dart';
import '../../../constants/project_strings.dart';
import '../../services/cache/shared_manager.dart';

class ProjectAppBar extends StatelessWidget
    with ProjectIcons, ProjectStrings
    implements PreferredSizeWidget {
  ProjectAppBar({
    super.key,
    this.languageIndex,
    this.cancelBtnOnPressed,
    this.selectAllBtnOnPressed,
    required this.hasCancelIcon,
    this.manager,
  });

  final int? languageIndex;
  final bool hasCancelIcon;
  final void Function()? cancelBtnOnPressed;
  final void Function()? selectAllBtnOnPressed;
  final SharedManager? manager;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(findString(languageIndex ?? 0, LanguagesEnum.appName)),
      actions: hasCancelIcon
          ? [
              IconButton(onPressed: selectAllBtnOnPressed, icon: icSelectAll),
              IconButton(
                onPressed: cancelBtnOnPressed,
                icon: icCancel,
                tooltip: findString(
                    languageIndex ?? 0, LanguagesEnum.cancelSelection),
              ),
            ]
          : [const SizedBox.shrink()],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
