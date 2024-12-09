abstract class DataState<T> {
  final T? data;
  final List<String>? errors;

  const DataState({this.data, this.errors});
}

class DataSuccess<T> extends DataState<T> {
  const DataSuccess(T data) : super(data: data);
}

class DataFailed<T> extends DataState<T> {
  const DataFailed(List<String> errors) : super(errors: errors);
}

