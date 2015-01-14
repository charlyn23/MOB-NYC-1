import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var Swipe: UISwipeGestureRecognizer!
    
    @IBOutlet weak var SomeText: UITextField!
    @IBAction func didTapButton(sender: AnyObject) {
        println("we made it!")
        label.text = "tap!"
        let text = label.text
        println(text)
    }
    

    @IBOutlet weak var label: UILabel!
    
    // Functions of use for this exercise:
    // Translating a string to an integer: "1".toInt()
    // Getting the text from a text field: let text = textFieldName.text
    // Setting the text on a text label or text field: textLabelName.text = "some text"
  

    @IBOutlet weak var enterName: UITextField!
    @IBOutlet weak var lblResult: UILabel!
    @IBAction func createGreeting(sender: AnyObject) {
        let text = enterName.text
        lblResult.text = "Hello \(text)"
    }
    ////////////////////
    
    @IBOutlet var enterNthNumber: UITextField!
    @IBOutlet weak var nthNumberResult: UILabel!
    @IBAction func fibonacci(sender: AnyObject) {
        
        // get input
        let text = enterNthNumber.text
        let indexMaybe = text.toInt()
        
        if let i = indexMaybe {
            //calc number
            let fibValue = fibCalc(i)
            
            //display number
            nthNumberResult.text = "\(fibValue)"
        }
        

    }
    
    func fibCalc(number: Int) -> Int {
        var a = 0
        var b = 1
        var c = 1
        if number <= 0 {
            println("no negative numbers or 0!")
            return -1
        }
        else if number == 1 {
            return 0
        }
        else if number == 2 {
            return 1
        }
        for i in 3...number {
            c = a + b
            a = b
            b = c
        }
        return c
    }
    
    //////////////////
    
    
    func bill(amt: Float, percentage: Float) -> (Float,Float) {
        var tip = amt * percentage
        var total = tip + amt
        return (tip,total)
    }
}

//    TODO: Create a text field, a label and a button in the storyboard's View Controller. Drag a new outlet from the label and text field to this file, then drag the 'touch up inside' event on the button into this file. When the button is clicked, make the text of the label display 'hello {whatever the text in the text field is}. Call an instructor/TA when you're done with this task.
//
    
//    
//    
//    TODO: Paste the fibonacci number function that you previously created into this class. Change the text box to use a numeric keypad for input. When the button is pressed, make the label print out the nth number in the fibonacci sequence (where n is the value of the text in the text field). Call an instructor/TA when you're done with this task.
//
//
//   TODO: Drag a new text field into the view controller, and create an outlet for it here. Make both text fields use the numeric keypad. One text field represents an optional tip percentage (in integer form, e.g 20 = 20% tip), the other represents the total amount of a bill. When the button is pressed, make the label display both the total amount and tip amount (e.g. "total: $100, tip: $15"). Call an instructor/TA when you're done with this task.
//