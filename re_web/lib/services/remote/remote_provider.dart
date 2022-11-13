import 'dart:math';

import 'package:re_web/models/token/token.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:injectable/injectable.dart';

import '../../models/article.dart';
import 'remote_repository.dart';

@singleton
class RemoteProvider {
  RemoteProvider({
    required RemoteRepository repo,
  }) : _repo = repo;
  final RemoteRepository _repo;

  Future<String> test() async {
    final response = await _repo.test();

    return response.data;
  }

  Future<String> verifyWallet({required String privateKey}) async {
    final response = await _repo.verifyWallet(privateKey: privateKey);
    return response.data["data"].first;
  }

  final _articles = List.generate(
    10,
    (_) => Article(
      title: lorem(paragraphs: 1, words: 3),
      content: lorem(paragraphs: 10, words: 500),
    ),
  );

  final _tokens = [
    Token(
        balance: Random().nextDouble() * 999,
        image: 'https://bitcoin.org/img/icons/opengraph.png?1648897668',
        name: 'BTC'),
    Token(
        balance: Random().nextDouble() * 999,
        image:
            'https://d33wubrfki0l68.cloudfront.net/fcd4ecd90386aeb50a235ddc4f0063cfbb8a7b66/4295e/static/bfc04ac72981166c740b189463e1f74c/40129/eth-diamond-black-white.jpg',
        name: 'ETH'),
    Token(
        balance: Random().nextDouble() * 999,
        image: 'https://cryptologos.cc/logos/tether-usdt-logo.png',
        name: 'USDT'),
    Token(
        balance: Random().nextDouble() * 999,
        image:
            'https://seeklogo.com/images/B/binance-coin-bnb-logo-97F9D55608-seeklogo.com.png',
        name: 'BNB'),
    Token(
        balance: Random().nextDouble() * 999,
        image:
            'https://seeklogo.com/images/U/usd-coin-usdc-logo-CB4C5B1C51-seeklogo.com.png',
        name: 'USDC'),
    Token(
        balance: Random().nextDouble() * 999,
        image: 'https://s2.coinmarketcap.com/static/img/coins/200x200/5426.png',
        name: 'SOL'),
    Token(
        balance: Random().nextDouble() * 999,
        image:
            'https://image.shutterstock.com/image-vector/ripple-coin-xrp-cryptocurrency-logo-260nw-1156035706.jpg',
        name: 'XRP'),
    Token(
        balance: Random().nextDouble() * 999,
        image:
            'https://upload.wikimedia.org/wikipedia/commons/f/ff/ADA_Cardano_Logo.png',
        name: 'ADA'),
    Token(
        balance: Random().nextDouble() * 999,
        image:
            'https://logowik.com/content/uploads/images/terra-coin-luna6467.jpg',
        name: 'LUNA'),
    Token(
        balance: Random().nextDouble() * 999,
        image: 'https://s2.coinmarketcap.com/static/img/coins/200x200/5805.png',
        name: 'AVAX'),
  ];

  Future<List<Article>> getArticles() async {
    await Future.delayed(const Duration(seconds: 1));
    return _articles;
  }

  Future<List<Token>> getTokens() async {
    await Future.delayed(const Duration(seconds: 3));
    return _tokens;
  }
}
