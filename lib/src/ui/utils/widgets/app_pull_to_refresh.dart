import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class PullToRefreshWidget extends StatelessWidget {
  final Widget child;
  final Function onRefresh;

  const PullToRefreshWidget({required this.child, required this.onRefresh});

  /*
  final _refreshController = RefreshController();

  todo - migrate to v2
  @override
  Widget build(BuildContext context) => SmartRefresher(
        header: const MaterialClassicHeader(
          color: Colors.white,
          backgroundColor: AppColors.primaryColor,
          distance: 80,
        ),
        enablePullDown: true,
        controller: _refreshController,
        onRefresh: () async {
          await onRefresh.call();
          _refreshController.refreshCompleted();
        },
        child: child,
      );*/

  @override
  Widget build(BuildContext context) => Container(
        child: child,
      );

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<Function>('onRefresh', onRefresh));
  }
}
