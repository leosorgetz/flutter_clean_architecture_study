import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class PullToRefreshWidget extends StatelessWidget {
  final Widget child;
  final Function onRefresh;
  final _refreshController = RefreshController();

  PullToRefreshWidget({this.child, this.onRefresh});

  @override
  Widget build(BuildContext context) => SmartRefresher(
        header: const MaterialClassicHeader(
          color: Colors.white,
          backgroundColor: Colors.blue,
          distance: 80,
        ),
        enablePullDown: true,
        controller: _refreshController,
        onRefresh: () async {
          await onRefresh.call();
          _refreshController.refreshCompleted();
        },
        child: child,
      );

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<Function>('onRefresh', onRefresh));
  }
}
