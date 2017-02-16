//
//  ViewController.swift
//  LoopSwift
//
//  Created by iOS Student on 2/16/17.
//  Copyright © 2017 NKT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tf_numberdraw: UITextField!
    @IBAction func btn_draw(_ sender: AnyObject) {
        if let n = Int(tf_numberdraw.text!)
        {
            for view in view.subviews {
                
                if view.isKind(of: UIImageView.self) {
                    view.removeFromSuperview()
                }
                
            }
            
            drawRowOfBall(n: n)
        }
        else
        {
            print("Nhập n")
        }
        
    }
    var _margin: CGFloat = 40
    var _marginColumn: CGFloat = 90
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    func drawRowOfBall(n: Int)  {
        for indexRow in 0..<n
        {
            for indexColumn in 0..<n
            {
                let image = UIImage(named: "green")
                let ball = UIImageView(image: image)
                ball.center = CGPoint(x: (_margin + CGFloat(indexRow) * spaceBetweenBall(n: n)), y: _marginColumn + CGFloat(indexColumn) * spaceBetweenBallColumn(n: n))
                self.view.addSubview(ball)
                
            }
        }
        
    }
    
    func spaceBetweenBall(n:Int) -> CGFloat {
        let spaceRow = (self.view.bounds.size.width - 2 * _margin) / CGFloat(n-1)
        return spaceRow
    }
    
    func spaceBetweenBallColumn(n:Int) -> CGFloat {
        let spaceColumn = (self.view.bounds.size.height - 2 * _marginColumn) / CGFloat(n-1)
        return spaceColumn
    }
}

