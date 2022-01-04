//
//  SuccessViewController.swift
//  FlutterwaveSDK_Example
//
//  Created by Rotimi Joshua on 08/10/2021.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import UIKit


class SuccessViewController: UIViewController {
    
    let successLabel = UILabel()
    let paymentLabel = UILabel()
    let underLineView = UIView()
    let closeButton = UIButton(type: .system)
    let purpleView = UIView()
    let orangeView = UIView()
    let whiteView = UIView()
    let amountLabel = UILabel()
    let dateView = UIView()
    let dateLabel = UILabel()
    let dateIcon = UIImageView()
    let amountLineView = UIView()
    let paymentMethodIcon = UIImageView()
    let paymentMethodLabel = UILabel()
    let paypalIcon = UIImageView()
    let paypalLabel = UILabel()
    let paypalLineView = UIView()
    let detailIcon = UIImageView()
    let detailLabel = UILabel()
    let amountPaidLabel = UILabel()
    let amountPaidValueLabel = UILabel()
    let referenceLabel = UILabel()
    let referenceValueLabel = UILabel()
    let applicablefeesLabel = UILabel()
    let applicablefeesValueLabel = UILabel()
    let totalAmountLabel = UILabel()
    let totalAmountValueLabel = UILabel()
    var fee = ""
    var amount = ""
    var ampuntPaid = ""
    var paymentType = ""
    var reference = ""
    var date = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpConstraintsAndProperties()
        
        
    }
    
}
