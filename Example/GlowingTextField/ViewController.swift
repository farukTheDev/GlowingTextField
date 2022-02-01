//
//  ViewController.swift
//  GlowingTextField
//
//  Created by farukTheDev on 01/31/2022.
//  Copyright (c) 2022 farukTheDev. All rights reserved.
//

import UIKit
import GlowingTextField

class ViewController: UIViewController {
    
    @IBOutlet weak var tfC: GlowingTextField!
    @IBOutlet weak var tfB: GlowingTextField!
    @IBOutlet weak var tfA: GlowingTextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tfA.glowColor = UIColor.magenta.cgColor
        //tfA.textBackgroundColor = .black
        tfA.textColor = .white
        
        
        tfB.glowColor = UIColor.systemPink.cgColor
        //tfB.textBackgroundColor = .black
        tfB.textColor = .systemPink
        
        tfC.glowColor = UIColor.cyan.cgColor
        //tfC.textBackgroundColor = .black
        tfC.textColor = .cyan
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

