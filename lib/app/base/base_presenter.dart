import 'dart:async';
import '../../domain/mapper/mapper.dart';
import '../../util/logger.dart';

abstract class ListViewContract<T> {
  void onLoadItemsComplete(Set<T> items);
  void onLoadItemsError();
}

abstract class ListPresenter<M, D> {
  ListViewContract _view;
  final Mapper<M, D> _mapper;

  ListPresenter(this._mapper) { }

  void attachView(ListViewContract view){
    _view = view;
  }

  void loadItems(){
    assert(_view != null);
    _proccessResult(onLoadItems());
  }

  Future<List<M>> onLoadItems();

  void _proccessResult(Future<List<M>> future) {
    future.then((itemsDTOs) =>
           itemsDTOs.map((itemDTO) => _mapper.toData(itemDTO))
                   .where((item) => item != null)
                   .toSet())
    .then((items) => _view.onLoadItemsComplete(items))
    .catchError((onError) {
      logError(message: onError.toString());
      _view.onLoadItemsError();
    });
  }
}
