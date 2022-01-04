//
//  SuccessViewController+setup.swift
//  FlutterwaveSDK_Example
//
//  Created by Rotimi Joshua on 08/10/2021.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import UIKit


extension  SuccessViewController {
    
    func setUpConstraintsAndProperties(){
        
        addAllViews()
        setupSucessLabel()
        setupExampleLabel()
        setupUnderLineView()
        setupWhiteView()
        setupAmountLabel()
        setupDateView()
        setupAmountLineView()
        setupPaymentIcon()
        setupPaymentLabel()
        setupPayPalIcon()
        setupPaypalLabel()
        setupPayPalLineView()
        setupDetailIcon()
        setupDetailLabel()
        setupCloseButton()
        setupReferenceLabel()
        setupReferenceValueLabel()
        setupApplicablefeesLabel()
        setupApplicablefeesValueLabel()
        setupTotalAmountLabel()
        setupTotalAmountValueLabel()
        
        
        applicablefeesValueLabel.text = fee
        referenceValueLabel.text = reference
        paymentLabel.text = paymentType
        amountLabel.text = amount
        totalAmountValueLabel.text = amount
        dateLabel.text = date
        
        
        
        view.backgroundColor = UIColor(hex: "#FEC483")
        
    }
    func addAllViews(){
        view.addSubview(successLabel)
        view.addSubview(underLineView)
        view.addSubview(whiteView)
        view.addSubview(paymentLabel)
        view.addSubview(amountLabel)
        view.addSubview(dateView)
        whiteView.addSubview(purpleView)
        whiteView.addSubview(orangeView)
        dateView.addSubview(dateIcon)
        dateView.addSubview(dateLabel)
        view.addSubview(amountLineView)
        view.addSubview(paymentMethodLabel)
        view.addSubview(paymentMethodIcon)
        view.addSubview(paypalIcon)
        view.addSubview(paypalLabel)
        view.addSubview(paypalLineView)
        view.addSubview(detailLabel)
        view.addSubview(detailIcon)
        view.addSubview(referenceLabel)
        view.addSubview(referenceValueLabel)
        view.addSubview(applicablefeesLabel)
        view.addSubview(applicablefeesValueLabel)
        view.addSubview(totalAmountLabel)
        view.addSubview(totalAmountValueLabel)
        view.addSubview(closeButton)
        
        NSLayoutConstraint.activate([
            successLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            
            successLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor, constant: 0),
            whiteView.topAnchor.constraint(equalTo: successLabel.bottomAnchor, constant: 20),
            whiteView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            whiteView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            whiteView.bottomAnchor.constraint(equalTo: closeButton.topAnchor, constant: -10),
            
            paymentLabel.topAnchor.constraint(equalTo: whiteView.topAnchor, constant: 20),
            paymentLabel.centerXAnchor.constraint(equalTo: whiteView.centerXAnchor, constant: 0),
            
            amountLabel.topAnchor.constraint(equalTo: paymentLabel.bottomAnchor, constant: 16),
            amountLabel.centerXAnchor.constraint(equalTo: whiteView.centerXAnchor, constant: 0),
            
            dateView.topAnchor.constraint(equalTo: amountLabel.bottomAnchor, constant: 16),
            dateView.centerXAnchor.constraint(equalTo: whiteView.centerXAnchor, constant: 0),
            dateView.heightAnchor.constraint(equalToConstant: 30),
            dateView.widthAnchor.constraint(equalToConstant: view.width/2),
            
            dateIcon.topAnchor.constraint(equalTo: dateView.topAnchor, constant: 6),
            dateIcon.leadingAnchor.constraint(equalTo: dateView.leadingAnchor, constant: 13),
            
            dateLabel.topAnchor.constraint(equalTo: dateView.topAnchor, constant: 4),
            dateLabel.leadingAnchor.constraint(equalTo: dateIcon.trailingAnchor, constant: 4),
            
            
            amountLineView.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 8),
            amountLineView.topAnchor.constraint(equalTo: dateView.bottomAnchor, constant:20),
            amountLineView.heightAnchor.constraint(equalToConstant: 1),
            amountLineView.widthAnchor.constraint(equalToConstant: view.width - 60),
            
            
            paymentMethodIcon.topAnchor.constraint(equalTo: amountLineView.topAnchor, constant: 20),
            paymentMethodIcon.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 16),
            
            paymentMethodLabel.topAnchor.constraint(equalTo: paymentMethodIcon.topAnchor, constant: -1),
            paymentMethodLabel.leadingAnchor.constraint(equalTo: paymentMethodIcon.trailingAnchor, constant: 8),
            
            
            paypalIcon.topAnchor.constraint(equalTo: paymentMethodIcon.topAnchor, constant: 30),
            paypalIcon.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 6),
            
            paypalLabel.topAnchor.constraint(equalTo: paypalIcon.topAnchor, constant: 2),
            paypalLabel.trailingAnchor.constraint(equalTo: whiteView.trailingAnchor, constant: -16),
            
            
            paypalLineView.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 8),
            paypalLineView.topAnchor.constraint(equalTo: paypalIcon.bottomAnchor, constant:25),
            paypalLineView.heightAnchor.constraint(equalToConstant: 1),
            paypalLineView.widthAnchor.constraint(equalToConstant: view.width - 60),
            
            detailIcon.topAnchor.constraint(equalTo: paypalLineView.topAnchor, constant: 20),
            detailIcon.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 16),
            
            detailLabel.topAnchor.constraint(equalTo: detailIcon.topAnchor, constant: 1),
            detailLabel.leadingAnchor.constraint(equalTo: detailIcon.trailingAnchor, constant: 8),
            
            referenceLabel.topAnchor.constraint(equalTo: detailIcon.topAnchor, constant: 40),
            referenceLabel.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 16),
            
            referenceValueLabel.topAnchor.constraint(equalTo: referenceLabel.topAnchor, constant: 2),
            referenceValueLabel.trailingAnchor.constraint(equalTo: whiteView.trailingAnchor, constant: -16),
            
            applicablefeesLabel.topAnchor.constraint(equalTo: referenceLabel.bottomAnchor, constant: 20),
            applicablefeesLabel.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 16),
            
            applicablefeesValueLabel.topAnchor.constraint(equalTo: applicablefeesLabel.topAnchor, constant: 2),
            applicablefeesValueLabel.trailingAnchor.constraint(equalTo: whiteView.trailingAnchor, constant: -16),
            
            totalAmountLabel.topAnchor.constraint(equalTo: applicablefeesLabel.bottomAnchor, constant: 20),
            totalAmountLabel.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 16),
            
            totalAmountValueLabel.topAnchor.constraint(equalTo: totalAmountLabel.topAnchor, constant: 2),
            totalAmountValueLabel.trailingAnchor.constraint(equalTo: whiteView.trailingAnchor, constant: -16),
            
            //            underLineView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            //            underLineView.topAnchor.constraint(equalTo: exampleLabel.bottomAnchor, constant: 8),
            //            underLineView.heightAnchor.constraint(equalToConstant: 1),
            //            underLineView.widthAnchor.constraint(equalToConstant: 158),
            
            purpleView.topAnchor.constraint(equalTo: whiteView.topAnchor, constant: 20),
            purpleView.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: -20),
            purpleView.heightAnchor.constraint(equalToConstant: 50),
            purpleView.widthAnchor.constraint(equalToConstant: 100),
            
            
            orangeView.topAnchor.constraint(equalTo: whiteView.topAnchor, constant: 50),
            orangeView.trailingAnchor.constraint(equalTo: whiteView.trailingAnchor, constant: 20),
            orangeView.heightAnchor.constraint(equalToConstant: 50),
            orangeView.widthAnchor.constraint(equalToConstant: 100),
            
            closeButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30),
            closeButton.heightAnchor.constraint(equalToConstant: 50),
            closeButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            closeButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20)
            //
        ])
    }
    
    
    func setupSucessLabel(){
        let attributedTitle = NSMutableAttributedString(string: "", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 20, weight: .semibold) as Any, NSAttributedString.Key.foregroundColor: UIColor(hex: "#6E6B67")])
        
        attributedTitle.append(NSAttributedString(string: "Payment Successful", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 23, weight: .medium) as Any, NSAttributedString.Key.foregroundColor: UIColor(hex: "#050300")]))
        
        successLabel.attributedText = attributedTitle
        
        successLabel.numberOfLines = 0
        
        successLabel.translatesAutoresizingMaskIntoConstraints = false
        successLabel.adjustsFontSizeToFitWidth = true
    }
    
    func setupExampleLabel(){
        paymentLabel.text = "Your payment was successful"
        paymentLabel.numberOfLines = 0
        paymentLabel.textColor = UIColor(hex: "#6E6B67")
        paymentLabel.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        paymentLabel.translatesAutoresizingMaskIntoConstraints = false
        paymentLabel.adjustsFontSizeToFitWidth = true
    }
    
    func setupUnderLineView(){
        underLineView.backgroundColor = UIColor(hex: "#F5A623")
        underLineView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func setupWhiteView(){
        whiteView.backgroundColor = .white
        whiteView.translatesAutoresizingMaskIntoConstraints = false
        whiteView.layer.cornerRadius = 12
    }
    
    func setupAmountLabel(){
        amountLabel.text = "$50009999"
        amountLabel.numberOfLines = 0
        amountLabel.textColor = UIColor(hex: "#050300")
        amountLabel.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        amountLabel.translatesAutoresizingMaskIntoConstraints = false
        amountLabel.adjustsFontSizeToFitWidth = true
    }
    
    func setupDateView(){
        dateView.backgroundColor = UIColor(hex: "#FF714F")
        dateView.translatesAutoresizingMaskIntoConstraints = false
        dateView.layer.cornerRadius = 15
        
        setupDateIcon()
        setupDateLabel()
    }
    
    func setupDateLabel(){
        dateLabel.text = "18 February, 2021"
        dateLabel.numberOfLines = 0
        dateLabel.textColor = .white
        dateLabel.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        dateLabel.translatesAutoresizingMaskIntoConstraints = false
        dateLabel.adjustsFontSizeToFitWidth = true
    }
    
    func setupDateIcon(){
        let image = UIImage(named: "dateIcon") as UIImage?
        dateIcon.image = image
        dateIcon.translatesAutoresizingMaskIntoConstraints = false
        dateIcon.widthAnchor.constraint(equalToConstant: 16).isActive = true
        dateIcon.heightAnchor.constraint(equalToConstant: 16).isActive = true
        dateIcon.contentMode = .scaleAspectFit
        //        dateIcon.layer.masksToBounds = true
        //        dateIcon.clipsToBounds = true
    }
    
    
    func setupAmountLineView(){
        amountLineView.backgroundColor = UIColor(hex: "#6E6B67").withAlphaComponent(0.08)
        amountLineView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func setupPaymentIcon(){
        let image = UIImage(named: "payment-method") as UIImage?
        paymentMethodIcon.image = image
        paymentMethodIcon.translatesAutoresizingMaskIntoConstraints = false
        paymentMethodIcon.widthAnchor.constraint(equalToConstant: 14).isActive = true
        paymentMethodIcon.heightAnchor.constraint(equalToConstant: 14).isActive = true
        paymentMethodIcon.contentMode = .scaleAspectFit
    }
    
    
    func setupPayPalIcon(){
        let image = UIImage(named: "paypal") as UIImage?
        paypalIcon.image = image
        paypalIcon.translatesAutoresizingMaskIntoConstraints = false
        paypalIcon.widthAnchor.constraint(equalToConstant: 100).isActive = true
        paypalIcon.heightAnchor.constraint(equalToConstant:20).isActive = true
        paypalIcon.contentMode = .scaleAspectFit
    }
    
    func setupPaymentLabel(){
        paymentMethodLabel.text = "Payment Method"
        paymentMethodLabel.numberOfLines = 0
        paymentMethodLabel.textColor = UIColor(hex: "#6E6B67")
        paymentMethodLabel.font = UIFont.systemFont(ofSize: 13, weight: .medium)
        paymentMethodLabel.translatesAutoresizingMaskIntoConstraints = false
        paymentMethodLabel.adjustsFontSizeToFitWidth = true
    }
    
    func setupPaypalLabel(){
        paypalLabel.text = "PAYPAL_FW"
        paypalLabel.numberOfLines = 0
        paypalLabel.textColor = UIColor(hex: "#050300")
        paypalLabel.textAlignment = .right
        paymentLabel.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        paypalLabel.translatesAutoresizingMaskIntoConstraints = false
        paypalLabel.adjustsFontSizeToFitWidth = true
    }
    
    func setupPayPalLineView(){
        paypalLineView.backgroundColor = UIColor(hex: "#6E6B67").withAlphaComponent(0.08)
        paypalLineView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func setupDetailIcon(){
        let image = UIImage(named: "detailIcon") as UIImage?
        detailIcon.image = image
        detailIcon.translatesAutoresizingMaskIntoConstraints = false
        detailIcon.widthAnchor.constraint(equalToConstant: 14).isActive = true
        detailIcon.heightAnchor.constraint(equalToConstant: 14).isActive = true
        detailIcon.contentMode = .scaleAspectFit
    }
    func setupDetailLabel(){
        detailLabel.text = "Payment Details"
        detailLabel.numberOfLines = 0
        detailLabel.textColor = UIColor(hex: "#6E6B67")
        detailLabel.font = UIFont.systemFont(ofSize: 13, weight: .medium)
        detailLabel.translatesAutoresizingMaskIntoConstraints = false
        detailLabel.adjustsFontSizeToFitWidth = true
    }
    
    func setupReferenceLabel(){
        referenceLabel.text = "Reference"
        referenceLabel.numberOfLines = 0
        referenceLabel.textColor = UIColor(hex: "#6E6B67")
        referenceLabel.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        referenceLabel.translatesAutoresizingMaskIntoConstraints = false
        referenceLabel.adjustsFontSizeToFitWidth = true
    }
    
    func setupReferenceValueLabel(){
        //        referenceValueLabel.text = "OXJC2778001354207"
        referenceValueLabel.numberOfLines = 0
        referenceValueLabel.textColor = UIColor(hex: "#050300")
        referenceValueLabel.textAlignment = .right
        referenceValueLabel.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        referenceValueLabel.translatesAutoresizingMaskIntoConstraints = false
        referenceValueLabel.adjustsFontSizeToFitWidth = true
    }
    
    func setupApplicablefeesLabel(){
        applicablefeesLabel.text = "Applicable Fees"
        applicablefeesLabel.numberOfLines = 0
        applicablefeesLabel.textColor = UIColor(hex: "#6E6B67")
        applicablefeesLabel.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        applicablefeesLabel.translatesAutoresizingMaskIntoConstraints = false
        applicablefeesLabel.adjustsFontSizeToFitWidth = true
    }
    
    func setupApplicablefeesValueLabel(){
        applicablefeesValueLabel.text = "USD 0.00"
        applicablefeesValueLabel.numberOfLines = 0
        applicablefeesValueLabel.textColor = UIColor(hex: "#050300")
        applicablefeesValueLabel.textAlignment = .right
        applicablefeesValueLabel.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        applicablefeesValueLabel.translatesAutoresizingMaskIntoConstraints = false
        applicablefeesValueLabel.adjustsFontSizeToFitWidth = true
    }
    
    
    func setupTotalAmountLabel(){
        totalAmountLabel.text = "Amount Paid"
        totalAmountLabel.numberOfLines = 0
        totalAmountLabel.textColor = UIColor(hex: "#6E6B67")
        totalAmountLabel.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        totalAmountLabel.translatesAutoresizingMaskIntoConstraints = false
        totalAmountLabel.adjustsFontSizeToFitWidth = true
    }
    
    func setupTotalAmountValueLabel(){
        //        totalAmountValueLabel.text = "USD 5,000.00"
        totalAmountValueLabel.numberOfLines = 0
        totalAmountValueLabel.textColor = UIColor(hex: "#050300")
        totalAmountValueLabel.textAlignment = .right
        totalAmountValueLabel.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        totalAmountValueLabel.translatesAutoresizingMaskIntoConstraints = false
        totalAmountValueLabel.adjustsFontSizeToFitWidth = true
    }
    
    func setupCloseButton(){
        closeButton.setTitle("Dismiss", for: .normal)
        closeButton.setTitleColor(.white, for: .normal)
        closeButton.backgroundColor = UIColor(hex: "#0F1C70")
        closeButton.layer.cornerRadius = 8
        closeButton.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        closeButton.heightAnchor.constraint(equalToConstant: 57).isActive = true
        closeButton.translatesAutoresizingMaskIntoConstraints = false
        closeButton.addTarget(self, action: #selector(dissmissView), for: .touchUpInside)
        
    }
    
    @objc func dissmissView(){
        self.dismiss(animated: true, completion: nil)
    }
}

