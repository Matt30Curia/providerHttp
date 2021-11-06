import 'package:flutter/material.dart';
import 'package:providernetwork/model/post.dart';
import 'package:providernetwork/network/request_http.dart';

enum stato { fetched, fetching, error }

class ClientProviderState extends ChangeNotifier {
  stato _stato = stato.fetching;
  Post? _post;

  ClientProviderState() {
    fetchUser();
  }

  Future<Post?> fetchUser() async {
    _post = await RequestHttp().getHttpPost();
    if (_post != null) {
      _setStati(stato.fetched);
      return _post;
    } else {
      _setStati(stato.error);
    }
  }

  void _setStati(stato value) {
    _stato = value;
    notifyListeners();
  }

  get stati => _stato;
  get getPost => _post;
}
