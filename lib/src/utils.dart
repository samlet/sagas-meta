
Future sleep1() {
  return new Future.delayed(const Duration(seconds: 1), () => "1");
}
Future sleepSeconds(int secs) {
  return new Future.delayed(Duration(seconds: secs), () => secs.toString());
}
