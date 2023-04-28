//
//  iOSFirebaseDemosApp.swift
//  iOSFirebaseDemos
//
//  Created by Bhushan Abhyankar on 04/02/2023.
//

import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}

@main
struct iOSFirebaseDemosApp: App {
    // register app delegate for Firebase setup
      @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
/// step 1. add sdk and app one project on console
/// step 2. enable dysm
/// 1.build setting-> Debug information-> select- DWARF with dysm file // in order to see charges in debug mode
