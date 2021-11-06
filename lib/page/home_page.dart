import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providernetwork/network/request_http.dart';
import 'package:providernetwork/provider/client_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ciiiiiii"),
        ),
        body: ChangeNotifierProvider<ClientProviderState>(
            create: (context) => ClientProviderState(),
            child: Consumer<ClientProviderState>(
                builder: (context, httpState, child) {
              return Center(
                child:
                    httpState.stati == stato.fetching ? a() : Text("caricato"),
              );
            })));
  }
}

Widget a() {
  print('object');
  return Text("carico....");
}
