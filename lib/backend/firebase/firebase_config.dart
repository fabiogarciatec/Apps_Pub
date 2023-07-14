import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyC3KvO93n14xTl0si3Y8m_8nJIcIUQP9S4",
            authDomain: "app-raizespremium.firebaseapp.com",
            projectId: "app-raizespremium",
            storageBucket: "app-raizespremium.appspot.com",
            messagingSenderId: "1027598069684",
            appId: "1:1027598069684:web:9d8fa39c66558e7ba0cce1",
            measurementId: "G-B4QG1TK80Y"));
  } else {
    await Firebase.initializeApp();
  }
}
