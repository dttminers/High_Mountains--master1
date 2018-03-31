//
//  valid.swift
//  High_Mountains
//
//  Created by Abhishek on 28/03/18.
//  Copyright © 2018 Abhishek. All rights reserved.
//

import Foundation
import UIKit

class EmailValidator{
    
    //function for emailvalidation
    class func invalid(emailid:String) -> Bool {
        
        let exp="[A-Za-z0-9_%-]+@[A-Za-z0-9-]+\\.[A-Za-z]{2,6}"
        return NSPredicate(format: "SELF MATCHES %@", exp).evaluate(with:emailid)
    }
    
    class func AlertMsg(title:String, message:String){
        
        let myalert=UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        
        let okAction=UIAlertAction(title: "ok", style: .default, handler:nil)
        myalert.addAction(okAction)
        //self.prese (myalert, animated: true, completion:nil)
        return
    }
    
}
