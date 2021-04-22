class ILocalStorage {
  Future get(String key) async {}
  Future delete(String key) async {}
  Future put(String key, bool isDark) async {}
}
