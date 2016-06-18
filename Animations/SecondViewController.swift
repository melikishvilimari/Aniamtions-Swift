import UIKit

class SecondViewController: UIViewController {

    let customImageView = UIImageView(image: UIImage(named: "swift"))
    let customView = UIView(frame: CGRect(x: 0, y: 0, width: 120, height: 120))
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        customImageView.frame = CGRect(x: 50, y: 50, width: 120, height: 120)
//        customImageView.layer.cornerRadius = 60
//        view.addSubview(customImageView)
        
        
        customView.backgroundColor = UIColor.redColor()
//        customView.layer.cornerRadius = customView.frame.width / 2
        customView.layer.borderColor = UIColor.blackColor().CGColor
        customView.layer.borderWidth = 4
        customView.layer.shadowColor = UIColor.redColor().CGColor
        customView.layer.shadowOffset = CGSize(width: 15, height: 15)
        customView.layer.shadowOpacity = 0.5
        
        
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
        
//        let animation = CABasicAnimation(keyPath: "backgroundColor")
//        animation.fromValue = UIColor.redColor().CGColor
//        animation.toValue = UIColor.greenColor().CGColor
//        animation.duration = 2
//        animation.repeatCount = 1
//        animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut)
//        animation.removedOnCompletion = false
//        animation.fillMode = kCAFillModeForwards
//        customView.layer.addAnimation(animation, forKey: nil)
        
        
//        let animation1 = CABasicAnimation(keyPath: "cornerRadius")
//        animation1.fromValue = customView.frame.width / 2
//        animation1.toValue = 2
//        animation1.duration = 1
//        animation1.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut)
//        animation1.removedOnCompletion = false
//        animation1.fillMode = kCAFillModeForwards
//        customView.layer.addAnimation(animation1, forKey: nil)
        
        
//
//        let animation2 = CABasicAnimation(keyPath: "borderColor")
//        animation2.fromValue = UIColor.blackColor().CGColor
//        animation2.toValue = UIColor.blueColor().CGColor
//        animation2.duration = 4
//        animation2.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut)
//        animation2.removedOnCompletion = false
//        animation2.fillMode = kCAFillModeForwards
//        customView.layer.addAnimation(animation2, forKey: nil)

        
        
//        let animation3 = CABasicAnimation(keyPath: "borderWidth")
//        animation3.fromValue = 4
//        animation3.toValue = 20
//        animation3.duration = 1
//        animation3.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut)
//        animation3.removedOnCompletion = false
//        animation3.fillMode = kCAFillModeForwards
//        customView.layer.addAnimation(animation3, forKey: nil)
        
//        let group = CAAnimationGroup()
//        group.duration = 1
//        group.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
//        group.beginTime = CACurrentMediaTime() + 0.5
//        group.fillMode = kCAFillModeForwards
//        group.removedOnCompletion = false
//        group.delegate = self
//        group.setValue("group", forKey: "group")
//        group.setValue(customView.layer, forKey: "layer")
//        
//        let scale = CABasicAnimation(keyPath: "transform.scale")
//        scale.fromValue = 1
//        scale.toValue = 2
//        
//        let rotation = CABasicAnimation(keyPath: "transform.rotation")
//        rotation.fromValue = CGFloat(0)
//        rotation.toValue = CGFloat(2 * M_PI)
//        
//        group.animations = [scale, rotation]
//        customView.layer.addAnimation(group, forKey: nil)
        
//        let layer = customView.layer
//        let point1 = CGPoint(
//            x: layer.bounds.width / 2,
//            y: layer.bounds.height / 2)
//        let point2 = view.center
//        let point3 = CGPoint(
//            x: view.frame.width - layer.bounds.width / 2,
//            y: layer.bounds.height / 2)
//        layer.position = point1
//        let animation = CAKeyframeAnimation(keyPath: "position")
//        animation.duration = 4
//        animation.keyTimes = [0, 0.4, 0.8, 1]
//        animation.values = [
//            point1,
//            point2,
//            point3,
//            point1
//        ].map { NSValue(CGPoint: $0) }
//        
//        customView.layer.addAnimation(animation, forKey: nil)
        
        let path = UIBezierPath()
        let bounds = customView.bounds
        path.moveToPoint(CGPoint(x: 4, y: bounds.height / 2))
        path.addLineToPoint(CGPoint(x: bounds.width / 2 - 2, y: bounds.height - 4))
        path.addLineToPoint(CGPoint(x: bounds.width - 4, y: 12))
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = path.CGPath
        shapeLayer.strokeColor = UIColor.whiteColor().CGColor
        shapeLayer.lineWidth = 2.5
        shapeLayer.fillColor = UIColor.clearColor().CGColor
        customView.layer.addSublayer(shapeLayer)
        
        let animation = CABasicAnimation(keyPath: "strokeEnd")
        animation.duration = 2
        animation.fromValue = 0
        animation.toValue = 1
        animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut)
        animation.fillMode = kCAFillModeForwards
        animation.removedOnCompletion = false
        shapeLayer.addAnimation(animation, forKey: nil)
    }
    
    override func animationDidStop(anim: CAAnimation, finished flag: Bool) {
        guard let _ = anim.valueForKey("group") as? String, layer = anim.valueForKey("layer") as? CALayer else {
            return
        }
        
        layer.cornerRadius = 20
    }
    
    @IBAction func animate(sender: UIButton) {
        animate4()
    }
}
