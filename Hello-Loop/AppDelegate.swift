//
//  AppDelegate.swift
//  Hello Loop
//

import UIKit
import LoopSDK

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, LoopSDKListener {
    
    var window: UIWindow?
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        let appID = "ENTER YOUR APP ID";
        let appToken = "ENTER YOUR APP TOKEN";

        // Initialize the LoopSDK with your appID and appToken
        // This app will only work on your phone because it requires a location signal
        // After you run this app, Loop will send a signal to your developer dashboard with your current signal
        LoopSDK.initialize(self, appID: appID, token: appToken)
        print ("Loop SDK initialization started")
        
        return true
    }
    
    func onLoopInitialized() {
        LoopSDK.loopLocationProvider.startListener()
        
        print("Loop SDK initialization completed")
    }
    
    func onLoopInitializeError(err: String) {
        print("Loop SDK initialization error: \(err)")
    }
}
