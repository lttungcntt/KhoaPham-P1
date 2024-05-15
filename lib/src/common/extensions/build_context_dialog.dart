import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';
import '../widgets/adaptive_dialog_action.dart';

class DialogAction {
  final String text;
  final void Function()? onPressed;

  DialogAction({required this.text, this.onPressed});
}

extension BuildContextDialog on BuildContext {
  bool get isShowingDialog => ModalRoute.of(this)?.isCurrent != true;

  void showError(String message) => showAlert(title: S.current.common_error, content: message);

  void showAlert({
    String? title,
    String? content,
    List<DialogAction> actions = const [],
  }) {
    if (actions.isEmpty) {
      actions = [DialogAction(text: S.current.common_ok)];
    }
    showAdaptiveDialog(
      context: this,
      builder: (BuildContext context) => AlertDialog.adaptive(
        title: title == null ? null : Text(title),
        content: content == null ? null : Text(content),
        actions: actions
            .map((action) => AdaptiveDialogAction(
                  onPressed: action.onPressed ?? () => Navigator.pop(context),
                  child: Text(action.text),
                ))
            .toList(),
      ),
    );
  }
}
