import 'package:flutter/material.dart';

import '../../util/logger.dart';
import 'base_presenter.dart';


abstract class ListState<U, T extends StatefulWidget> extends State<T> implements ListViewContract<U> {

  Set<U> _items;

  ListState() {
    _items = new Set<U>();
  }

  @override
  void onLoadItemsComplete(Set<U> items) {
    _items.addAll(items);
    logDebug(message: "Load items complete, items length: ${items.length}");
  }

  @override
  void onLoadItemsError() {
    logError(message: "Load items error :(");
  }

}
