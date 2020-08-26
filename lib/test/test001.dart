void main() {
  Stream.fromFutures([
    Future.delayed(Duration(seconds: 3), () {
      return 'AAA';
    }),
    Future.delayed(Duration(seconds: 2), () {
      throw AssertionError('ERROT');
    }),
    Future.delayed(Duration(seconds: 1), () {
      return 'CCC';
    })
  ]).listen((event) {
    print('listen -> $event');
  }, onError: (e) {
    print('onError -> $e');
  }).onDone(() {
    print('onDone');
  });
}
