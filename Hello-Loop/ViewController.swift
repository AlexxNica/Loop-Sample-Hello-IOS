//
//  ViewController.swift
//  Hello Loop
//

import UIKit
import LoopSDK

class ViewController: UIViewController {
    
    @IBOutlet weak var sendButton: UIButton!
    @IBOutlet weak var failureView: UIView!
    @IBOutlet weak var successView: UIView!
    
    @IBOutlet weak var failureLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.resetSentState()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func onSendTest(sender: AnyObject) {
        self.successView.hidden = true
        self.sendButton.enabled = true
        
        LoopSDK.syncManager.forceSendSignals()
    }
    
    func resetSentState() {
        self.successView.hidden = true
        self.sendButton.enabled = true
        self.failureView.hidden = true
    }
    
    func setSuccessState() {
        self.successView.hidden = false
        self.sendButton.enabled = true
    }
    
    func setFailureState(err : NSError? = nil, message : String? = nil) {
        var finalMessage = "Unknown error";
        if(err != nil) {
            finalMessage = err!.localizedDescription
        }
        
        if(message != nil) {
            finalMessage = message!;
        }
        
        self.successView.hidden = true
        self.sendButton.enabled = true
        self.failureView.hidden = false
        self.failureLabel.text = finalMessage;
    }
}

