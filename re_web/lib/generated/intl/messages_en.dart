// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(appName) =>
      "I understand that ${appName} cannot recover this password for me.";

  static String m1(num) => "Must be at least ${num} characters";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "appName": MessageLookupByLibrary.simpleMessage("App Name"),
        "confirmPassword":
            MessageLookupByLibrary.simpleMessage("Confirm Password"),
        "createNewAccount":
            MessageLookupByLibrary.simpleMessage("Create New Account"),
        "createPassword":
            MessageLookupByLibrary.simpleMessage("Create password"),
        "createWallet": MessageLookupByLibrary.simpleMessage("Create Wallet"),
        "depositCrypto": MessageLookupByLibrary.simpleMessage("Deposit Crypto"),
        "dontGiveThisPrivateKeyToAnyone": MessageLookupByLibrary.simpleMessage(
            "Don’t give this privatekey to anyone!"),
        "dontSeeYourNFT":
            MessageLookupByLibrary.simpleMessage("Don\'t see your nft?"),
        "dontSeeYourToken":
            MessageLookupByLibrary.simpleMessage("Don\'t see your token?"),
        "easyWayToManageYourEWallet": MessageLookupByLibrary.simpleMessage(
            "Easy way to manage your e-wallet"),
        "enterToYourWallet":
            MessageLookupByLibrary.simpleMessage("Enter to your wallet"),
        "exchangeCrypto":
            MessageLookupByLibrary.simpleMessage("Exchange Crypto"),
        "getStarted": MessageLookupByLibrary.simpleMessage("Get started"),
        "hide": MessageLookupByLibrary.simpleMessage("Hide"),
        "iUnderstandThatAppNameCannotRecoverThisPasswordForMe": m0,
        "importAnAccount":
            MessageLookupByLibrary.simpleMessage("Import an Account"),
        "importNFTs": MessageLookupByLibrary.simpleMessage("Import nfts"),
        "importTokens": MessageLookupByLibrary.simpleMessage("Import tokens"),
        "importWallet": MessageLookupByLibrary.simpleMessage("Import Wallet"),
        "logInWithBiometrics":
            MessageLookupByLibrary.simpleMessage("Log In With Biometrics"),
        "manageYourEveryPennyAndTransactionWithEase":
            MessageLookupByLibrary.simpleMessage(
                "Manage your every penny and transaction with ease"),
        "mustBeAtLeastCharacters": m1,
        "newPassword": MessageLookupByLibrary.simpleMessage("New Password"),
        "nfts": MessageLookupByLibrary.simpleMessage("NFTs"),
        "password": MessageLookupByLibrary.simpleMessage("Password"),
        "privateKey": MessageLookupByLibrary.simpleMessage("Private key"),
        "show": MessageLookupByLibrary.simpleMessage("Show"),
        "signIn": MessageLookupByLibrary.simpleMessage("Sign In"),
        "signInWithBiometrics":
            MessageLookupByLibrary.simpleMessage("Sign in with Biometrics ?"),
        "thisPasswordWillUnlockYourWalletOnlyOnThisDevice":
            MessageLookupByLibrary.simpleMessage(
                "This password will unlock your wallet only on this device."),
        "tokens": MessageLookupByLibrary.simpleMessage("TOKENS"),
        "walletAddedSuccessfully":
            MessageLookupByLibrary.simpleMessage("Wallet added successfully"),
        "welcomeBack": MessageLookupByLibrary.simpleMessage("Welcome Back!"),
        "withdrawCrypto":
            MessageLookupByLibrary.simpleMessage("Withdraw Crypto")
      };
}
