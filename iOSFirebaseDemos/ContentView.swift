//
//  ContentView.swift
//  iOSFirebaseDemos
//
//  Created by Bhushan Abhyankar on 04/02/2023.
//
///Firebase Crashlytics
///It is a crash reporting tool provided by Google as part of the Firebase suite of tools for iOS and Android apps.
///It provides detailed information about app crashes, including the stack trace, device information, and user data.
///https://console.firebase.google.com
///Download depednany via spm-   https://github.com/firebase/firebase-ios-sdk

import SwiftUI
import FirebaseAnalytics

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!").padding(40)
            
            Button("Crash the App") {
//              fatalError("Crash was triggered")
                print("Button Tap")
                
            }.padding(30)
            
            Button("Anlytics Test") {
//              fatalError("Crash was triggered")
                Analytics.logEvent(AnalyticsEventSelectContent, parameters: [
                  AnalyticsParameterItemID: "id- First Event!)",
                  AnalyticsParameterItemName: "FirstEventName",
                  AnalyticsParameterContentType: "cont",
                ])
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
