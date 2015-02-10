// Playground - noun: a place where people can play

import UIKit

var width: CGFloat = 10
width = 20
width = 20.5
width = -1
width = 20

var point = CGPoint(x: 10, y: 10)
println(point.x)
println(point.y)
point.x = 20
point.y = 20

var size = CGSize(width: 20, height: 20)
println(size.width)
println(size.height)
size.height = 20

var rect = CGRect(x: 0, y: 0, width: 320, height: 44)
println(rect.size.width)
println(rect.origin.y)
println(CGRectGetMidY(rect))
println(CGRectGetMaxX(rect))

var container = UIView(frame: CGRect(x: 0, y: 0, width: 500, height: 500))
container.backgroundColor = UIColor.brownColor()

var halfSubView = (frame: CGRect(x: 0, y: 0, width: 500, height: 250))
halfSubView.backgroundColor = UIColor.redColor()

//container.addSubview(halfSubView)

var view = UIView(frame: CGRect(x: 0, y:0, width: 100, height: 100))
var view2 - UIView(frame: CGRect(x: 0, y: CGRectGetMaxY(view.frame), width: 100, height: 100))

//using CGRectGetMaxY is helpful. we may decide later to change the proportions of "view", and now view2 with change as well.

