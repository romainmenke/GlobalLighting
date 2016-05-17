//: Playground - noun: a place where people can play

import UIKit
import RMGlobalLighting
import XCPlayground

var str = "Hello, playground"


RMStar.sol().angle = 10

RMStar.sol().distance = 0
RMStar.sol().relativeDepth = 1

let test = RMStar.sol().angle


let earth = RMLightingView(frame: CGRect(x: 100, y: 100, width: 50, height: 50), depth:nil)
earth.backgroundColor = UIColor.blueColor()
let mars = RMLightingView(frame: CGRect(x: 50, y: 50, width: 30, height: 30), depth:nil)
mars.backgroundColor = UIColor.redColor()

let superView = UIView(frame: CGRect(x: 0, y: 0, width: 400, height: 400))
superView.backgroundColor = UIColor.whiteColor()
superView.addSubview(earth)
superView.addSubview(mars)


RMStar.sol().lightsOn()



RMStar.sol().animateWithDuration(3.0, animations: { () -> Void in
    RMStar.sol().angle += 70
    RMStar.sol().spread = 5
    RMStar.sol().shadowColor = UIColor(red: 0.1, green: 0.2, blue: 0.3, alpha: 0.4)
    
    }, completion: nil)





superView



XCPlaygroundPage.currentPage.liveView = superView

XCPlaygroundPage.currentPage.needsIndefiniteExecution = true
