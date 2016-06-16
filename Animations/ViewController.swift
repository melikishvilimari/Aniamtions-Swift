import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var customView: UIView!
    @IBOutlet weak var customViewCenterXConstraint: NSLayoutConstraint!
    @IBOutlet weak var customViewCenterYConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(animated: Bool) {
        
    }
    
    override func viewDidAppear(animated: Bool) {
        
    }
    
    func animate1() {
        customViewCenterXConstraint.constant = -(view.frame.width - customView.frame.width) / 2
        customViewCenterYConstraint.constant = -(view.frame.height - customView.frame.height) / 2
        UIView.animateWithDuration(1.5) {
            self.view.layoutIfNeeded()
        }
    }
    
    func animate2() {
        customViewCenterXConstraint.constant = (view.frame.width - customView.frame.width) / 2
        customViewCenterYConstraint.constant = -(view.frame.height - customView.frame.height) / 2
        UIView.animateWithDuration(0.5, animations: { 
            self.view.layoutIfNeeded()
        }) { (bool: Bool) in
            let alert = UIAlertController(title: "Animation done", message: "", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
        }
    }
    
    func animate3() {
        customViewCenterXConstraint.constant = (view.frame.width - customView.frame.width) / 2
        customViewCenterYConstraint.constant = -(view.frame.height - customView.frame.height) / 2
        
        UIView.animateWithDuration(
            0.8,
            delay: 1,
            options: [.CurveEaseInOut, .Autoreverse, .Repeat],
            animations: {
            self.view.layoutIfNeeded()
        }) { (bool: Bool) in
            
        }
        
    }
    
    func animate4() {
        customViewCenterXConstraint.constant = -(view.frame.width - customView.frame.width) / 2
        customViewCenterYConstraint.constant = -(view.frame.height - customView.frame.height) / 2
        
        UIView.animateWithDuration(
            1.5,
            delay: 0,
            usingSpringWithDamping: 0.45,
            initialSpringVelocity: 5,
            options: UIViewAnimationOptions.CurveEaseInOut,
            animations: {
            self.view.layoutIfNeeded()
        }) { (bool: Bool) in
            
        }
        
    }
    
    func animate5() {
        
        UIView.animateWithDuration(2) {
            self.customView.alpha = 0.5
            self.customView.backgroundColor = UIColor.blueColor()
            self.customView.transform = CGAffineTransformMakeRotation(CGFloat(M_PI))
            self.customView.transform = CGAffineTransformMakeScale(0.5, 0.5)
        }
        
    }
    
    @IBAction func animateButtonTapped(sender: UIButton) {
        animate5()
    }
    
    func a() {
        
        UIView.animateWithDuration(1.5) {
            
        }
        
        UIView.animateWithDuration(0.5, animations: {
            
        }) { (bool: Bool) in

        }
        
    }
}




