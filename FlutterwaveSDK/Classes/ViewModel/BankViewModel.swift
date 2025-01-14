//
//  MobileMoneyViewModel.swift
//  RaveSDK
//
//  Created by Rotimi Joshua on 02/09/2020.
//

import RxSwift
import Swinject

class BankViewModel: BaseViewModel{

    static let sharedViewModel: BankViewModel = Container.sharedContainer.resolve(BankViewModel.self)!

    let bankRepository: BankRepository
    let referenceText = PublishSubject<String>()
    let changeUSSDText = PublishSubject<String>()
    let bankTransferResponse = PublishSubject<BankTransferResponse>()
    let ukAccountResponse = PublishSubject<UKAccountPaymentsResponse>()
    let nigeriaBankAccountResponse = PublishSubject<NigeriaBankTransferResponse>()
    let ussdResponse = PublishSubject<USSDResponse>()
    let bankList = PublishSubject<[Bank]>()

    var ussdBankText:String = ""
    var flwRef = ""
    var selectedUSSDBank :USSDBanks?

    init(bankRepository: BankRepository){
        self.bankRepository = bankRepository
    }

    func bankTransfer(amount: String) {
        let request = BankTransferRequest(txRef: FlutterwaveConfig.sharedConfig().transactionRef, amount: amount, email: FlutterwaveConfig.sharedConfig().email, phoneNumber: FlutterwaveConfig.sharedConfig().phoneNumber, currency: FlutterwaveConfig.sharedConfig().currencyCode, duration: FlutterwaveConfig.sharedConfig().duration, frequency: FlutterwaveConfig.sharedConfig().frequency, narration: FlutterwaveConfig.sharedConfig().narration, isPermanent: FlutterwaveConfig.sharedConfig().isPermanent)
        makeAPICallRx(request: request, apiRequest: bankRepository.bankTransfer(request:), successHandler: bankTransferResponse, onSuccessOperation: { response in
        }, apiName: .bankTransfer, apiErrorName: .bankTransferError)
    }


    func ukAccountTransfer(amount: String, accountBank: String, accountNumber: String) {
        let request = UKAccountPaymentsRequest(txRef: FlutterwaveConfig.sharedConfig().transactionRef, amount: amount, accountBank: accountBank, accountNumber:accountNumber, currency: FlutterwaveConfig.sharedConfig().currencyCode, email: FlutterwaveConfig.sharedConfig().email, phoneNumber: FlutterwaveConfig.sharedConfig().phoneNumber, fullname: "\(FlutterwaveConfig.sharedConfig().firstName.orEmpty()) \(FlutterwaveConfig.sharedConfig().lastName.orEmpty())")
        makeAPICallRx(request: request, apiRequest: bankRepository.ukAccountsPayments(request:), successHandler: ukAccountResponse, onSuccessOperation: {response in
            self.flwRef = response.data?.flwRef ?? ""

        }, apiName: .ukAccountTransfer, apiErrorName: .ukAccountTransferError)
    }

    func nigeriaBankTransfer(amount: String, accountBank: String, accountNumber: String, phoneNumber: String, passCode:String, bvn:String) {
        let request = NigeriaBankTransferRequest(txRef: FlutterwaveConfig.sharedConfig().transactionRef, amount: amount, accountBank: accountBank, accountNumber: accountNumber, currency: FlutterwaveConfig.sharedConfig().currencyCode, email: FlutterwaveConfig.sharedConfig().email, phoneNumber: phoneNumber, passCode:passCode, bvn:bvn, fullname: "\(FlutterwaveConfig.sharedConfig().firstName.orEmpty()) \(FlutterwaveConfig.sharedConfig().lastName.orEmpty())")
        makeAPICallRx(request: request, apiRequest: bankRepository.nigeriaBankTransfer(request:),
                      successHandler: nigeriaBankAccountResponse,onSuccessOperation: { response in
                        self.checkAuth(response: response.data, flwRef: response.data?.flwRef ?? "", source: .nigerianBankTransfer)

                      }, apiName: .directDebit, apiErrorName: .directDebitError)
    }

    func ussd(amount: String,ussdBank:USSDBanks?) {
        let request = USSDRequest(txRef: FlutterwaveConfig.sharedConfig().transactionRef, accountBank: ussdBank?.bankCode, amount: amount, currency: FlutterwaveConfig.sharedConfig().currencyCode, email: FlutterwaveConfig.sharedConfig().email, phoneNumber: FlutterwaveConfig.sharedConfig().phoneNumber, fullname: "\(FlutterwaveConfig.sharedConfig().firstName.orEmpty()) \(FlutterwaveConfig.sharedConfig().lastName.orEmpty())")
        makeAPICallRx(request: request, apiRequest: bankRepository.ussd(request:), successHandler: ussdResponse,onSuccessOperation: {response in
            self.selectedUSSDBank = ussdBank
            self.flwRef = response.data?.flwRef ?? ""
            self.processAuth(meta: response.meta)

        }, apiName: .ussd, apiErrorName: .ussdError)
    }

    func getBanks() {
        makeGetAPICallRx(apiRequest: bankRepository.getbank, successHandler: bankList)

    }


    private func processAuth(meta:Meta?){
        if(meta?.authorization?.mode == "ussd"){
            let note  = meta?.authorization?.note ?? ""
            if let index = note.index(of: "#") {
                let firstPart = note.substring(to: index)
                let lastPart = note.substring(from: index)
//                print("USSD CODES")
//                print(firstPart)
//                print(lastPart)
                if(lastPart.length > 1){
                    self.ussdBankText = String(firstPart)
                    self.referenceText.onNext(String(lastPart).replacingOccurrences(of: "#|", with: ""))
                    self.changeUSSDText.onNext(self.ussdBankText)
                    return
                }else{
                    self.referenceText.onNext("Reference Code")
                }
            }

            self.ussdBankText = note.replacingOccurrences(of: "bank_ussd_code", with: self.selectedUSSDBank?.bankUssdCode ?? "")
            self.changeUSSDText.onNext(self.ussdBankText)

        }
    }

}




