import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBwdo2cEFDM9lybJcD_-DmRiBH-NmDUtyQ",
            authDomain: "comedia-ingressos-9aekof.firebaseapp.com",
            projectId: "comedia-ingressos-9aekof",
            storageBucket: "comedia-ingressos-9aekof.appspot.com",
            messagingSenderId: "3759251678",
            appId: "1:3759251678:web:e8e69ea08499907838224f",
            measurementId: "G-LRWXMB3VWF"));
  } else {
    await Firebase.initializeApp();
  }
}
