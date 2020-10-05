class SampleService {
  Future<String> sampleServiceFunction() {
    return Future<String>.delayed(Duration(seconds: 1), () => 'finished');
  }
}
