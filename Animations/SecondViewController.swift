import UIKit

class SecondViewController: UIViewController {

    let customImageView = UIImageView(image: UIImage(named: "swift"))
    let customView = UIView(frame: CGRect(x: 0, y: 0, width: 120, height: 120))
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        customImageView.frame = CGRect(x: 50, y: 50, width: 120, height: 120)
//        customImageView.layer.cornerRadius = 60
//        view.addSubview(customImageView)
        
        
        customView.backgroundColor = UIColor.purpleColor()
        customView.layer.borderColor = UIColor.greenColor().CGColor
        customView.layer.borderWidth = 4
        customView.layer.shadowColor = UIColor.redColor().CGColor
        customView.layer.shadowOffset = CGSize(width: 5, height: 5)
        customView.layer.shadowOpacity = 1
        customView.center = view.center
        view.addSubview(customView)
    }
    
    func animate1() {
        UIView.animateWithDuration(0.5, animations: { 
            self.customImageView.frame.origin.x = self.view.frame.width - self.customImageView.frame.width
        }) { (bool: Bool) in
            UIView.animateWithDuration(0.5, animations: {
                self.customImageView.frame.origin.y = self.view.frame.height - self.customImageView.frame.height
            }) { (bool: Bool) in
                
            }
        }
    }
    
    func animate2() {
        UIView.animateWithDuration(0.5, animations: {
            self.customImageView.frame.size.width *= 1.5
            self.customImageView.frame.size.height *= 1.5
            self.customImageView.center = self.view.center
        }) { (bool: Bool) in
            
            UIView.animateWithDuration(
                1.5,
                delay: 0,
                usingSpringWithDamping: 0.45,
                initialSpringVelocity: 5,
                options: [.CurveEaseInOut, .Repeat, .Autoreverse],
                animations: {
                self.customImageView.transform = CGAffineTransformMakeScale(1.2, 1.2)
                self.customImageView.alpha = 0.5
            }, completion: nil)
            
        }
        
        
    }
    
    func animate3() {
        UIView.animateKeyframesWithDuration(1.5, delay: 0, options: [], animations: {
            
            UIView.addKeyframeWithRelativeStartTime(0, relativeDuration: 0.3, animations: { 
                self.customImageView.center.x = self.view.center.x
                self.customImageView.center.y = self.view.frame.height - 110
            })
            
            UIView.addKeyframeWithRelativeStartTime(0.3, relativeDuration: 0.3, animations: {
                self.customImageView.frame.origin.x = self.view.frame.width - 50 - self.customImageView.frame.width
                self.customImageView.frame.origin.y = 50
            })
            
            UIView.addKeyframeWithRelativeStartTime(0.6, relativeDuration: 0.3, animations: {
                self.customImageView.frame.origin = CGPoint(x: 50, y: 50)
            })
            
        }) { (bool: Bool) in
            
        }
        
        UIView.animateKeyframesWithDuration(1.5, delay: 0, options: [], animations: { 
            
        }) { (bool: Bool) in
            
        }
    }
    
    func animate4() {
        
        let animation = CABasicAnimation(keyPath: "position.x")
        animation.fromValue = view.center.x
        animation.toValue = 300
        animation.duration = 1
        animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut)
        animation.removedOnCompletion = false
        animation.fillMode = kCAFillModeForwards
        customView.layer.addAnimation(animation, forKey: nil)
        
        let animation1 = CABasicAnimation(keyPath: "shadowOpacity")
        animation1.fromValue = 1
        animation1.toValue = 0.5
        animation1.duration = 1
        animation1.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut)
        animation1.removedOnCompletion = false
        animation1.fillMode = kCAFillModeForwards
        customView.layer.addAnimation(animation1, forKey: nil)
        
        let animation2 = CABasicAnimation(keyPath: "shadowOffset.height")
        animation2.fromValue = 5
        animation2.toValue = 50
        animation2.duration = 1
        animation2.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut)
        animation2.removedOnCompletion = false
        animation2.fillMode = kCAFillModeForwards
        customView.layer.addAnimation(animation2, forKey: nil)
        
        let animation3 = CABasicAnimation(keyPath: "shadowOffset.width")
        animation3.fromValue = 5
        animation3.toValue = -50
        animation3.duration = 1
        animation3.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut)
        animation3.removedOnCompletion = false
        animation3.fillMode = kCAFillModeForwards
        customView.layer.addAnimation(animation3, forKey: nil)
        
    }
    
    @IBAction func animate(sender: UIButton) {
        animate4()
    }
}
