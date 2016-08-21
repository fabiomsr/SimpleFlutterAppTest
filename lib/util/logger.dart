
// Simple logger

logDebug({String tag : '_', String  message : ''}) {
  print("TAG:$tag DEBUG $message");
}

logInfo({String tag : '_', String  message : ''}) {
  print("TAG:$tag INFO $message");
}

logWarning({String tag : '_', String  message : ''}) {
  print("TAG:$tag WARN $message");
}

logError({String tag : '_', String  message : ''}) {
  print("TAG:$tag ERROR $message");
}
