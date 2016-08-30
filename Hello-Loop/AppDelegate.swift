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
        let appID = ""
        let appToken = ""

        let testUserId = ""
        let testDeviceId = ""

        LoopSDK.setUserID(testUserId);
        LoopSDK.setDeviceID(testDeviceId);
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
