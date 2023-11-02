# Motorcycle_shop_app

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.




// Import the functions you need from the SDKs you need
import { initializeApp } from "firebase/app";
import { getAnalytics } from "firebase/analytics";
// TODO: Add SDKs for Firebase products that you want to use
// https://firebase.google.com/docs/web/setup#available-libraries

// Your web app's Firebase configuration
// For Firebase JS SDK v7.20.0 and later, measurementId is optional
const firebaseConfig = {
  apiKey: "AIzaSyDqaaIK4Vq9tXWPI9s45JhEwg9OJXn25Lk",
  authDomain: "Motorcycle shopapp-9ac2e.firebaseapp.com",
  projectId: "Motorcycle shopapp-9ac2e",
  storageBucket: "Motorcycle shopapp-9ac2e.appspot.com",
  messagingSenderId: "1006860063986",
  appId: "1:1006860063986:web:b1bf83a7937b0e25012c6b",
  measurementId: "G-BSY814V9TL"
};

// Initialize Firebase
const app = initializeApp(firebaseConfig);
const analytics = getAnalytics(app);