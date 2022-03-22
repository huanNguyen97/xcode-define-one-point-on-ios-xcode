//
//  ViewController.swift
//  PointingAtScreen
//
//  Created by BSP Macbook on 3/22/22.
//

import UIKit

class ViewController: UIViewController {
    
    let startPoint = StartPoint()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        startPoint.translatesAutoresizingMaskIntoConstraints = false
        startPoint.backgroundColor = .white
        
        view.addSubview(startPoint)
        
        // Customize display of the point
        NSLayoutConstraint.activate([
            startPoint.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            startPoint.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            startPoint.widthAnchor.constraint(equalToConstant: 400),
            startPoint.heightAnchor.constraint(equalToConstant: 800)
        ])
        // End Customize
    }
    
}

class StartPoint: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func draw(_ rect: CGRect) {
        
        guard let context = UIGraphicsGetCurrentContext() else { return }
        
        let rectangle1 = CGRect(x: 100, y: 90, width: 2, height: 2)
        
        context.setFillColor(UIColor.systemRed.cgColor)
        context.setStrokeColor(UIColor.systemRed.cgColor)
        context.setLineWidth(20)
        context.addRect(rectangle1)
        context.drawPath(using: .fillStroke)
        context.fill(rectangle1)
    }
}

