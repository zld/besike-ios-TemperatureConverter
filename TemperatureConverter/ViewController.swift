//
//  ViewController.swift
//  TemperatureConverter
//
//  Created by 朱里达 on 14/10/23.
//  Copyright (c) 2014年 zld. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    @IBOutlet weak var kelvinLabel: UILabel!
    @IBOutlet weak var temperatureSlider: UISlider!
    
    @IBAction func temperatureSliderChanged(sender: AnyObject) {
        self.updateTemperatureDisplays()
    }
    
    func updateTemperatureDisplays() {
        var c = self.temperatureSlider.value;
        var f = (c * 9 / 5) + 32
        var k = c + 273.15
        self.celsiusLabel.text = String(format: "%.1fC", arguments: [c])
        self.fahrenheitLabel.text = String(format: "%.1fF", arguments: [f])
        self.kelvinLabel.text = String(format: "%.1fK", arguments: [k])
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        let screen = UIScreen.mainScreen()
        println("Screen fixed bounds: \(screen.fixedCoordinateSpace.bounds)")
        println("Screen bounds: \(screen.bounds)")
        println("Top layout guide: \(topLayoutGuide.length)")
        
//        if (screen.bounds.width >= 450) {
        var newWidth = screen.bounds.width - 32
        titleLabel.frame = CGRectMake(16, 16, newWidth, 21)
        titleLabel.textAlignment = NSTextAlignment.Center
        titleLabel.backgroundColor = UIColor.lightGrayColor()
//        }
    }


}

