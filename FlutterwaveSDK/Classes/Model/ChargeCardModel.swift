//
//  ChargeCardModel.swift
//  RaveSDK
//
//  Created by Rotimi Joshua on 26/08/2020.
//

import Foundation


struct ChargeCardRequest: Codable {

    let client:String?
}


struct ChargeCardResponse:Codable,FlutterChargeResponse {
    let status, message: String?
    let data: ChargeData?
    let meta: Meta?
}

// MARK: - DataClass
struct ChargeData:Codable {
//    let id: Int
//        let txRef, orderRef, flwRef, redirectURL: String
//        let deviceFingerprint: String
//        let settlementToken: JSONNull?
//        let cycle: String
//        let amount: Int
//        let chargedAmount, appfee: Double
//        let merchantfee, merchantbearsfee: Int
//        let chargeResponseCode, raveRef, chargeResponseMessage, authModelUsed: String
//        let currency, ip, narration, status: String
//        let modalauditid, vbvrespmessage, authurl, vbvrespcode: String
//        let acctvalrespmsg, acctvalrespcode: JSONNull?
//        let paymentType: String
//        let paymentPlan, paymentPage: JSONNull?
//        let paymentID, fraudStatus, chargeType: String
//        let isLive: Int
//        let retryAttempt, getpaidBatchID: JSONNull?
//        let createdAt, updatedAt: String
//        let deletedAt: JSONNull?
//        let customerID, accountID: Int
//        let chargeToken: ChargeToken
//        let customercandosubsequentnoauth: Bool
//        let customer: Customer
//        let card: Card
//
    
    let id: Int?
    let txRef: String?
    let flwRef:String?
    let deviceFingerprint: String?
    let amount, chargedAmount, appFee, merchantFee: Double?
    let processorResponse, authModel, currency, ip: String?
    let narration, status, authURL, paymentType: String?
    let paymentPlan: Int?
    let fraudStatus, chargeType, createdAt: String?
    let accountID: Int?
    let customer: Customer?
    let card: CardData?
    
    enum CodingKeys: String, CodingKey {
         case id
         case txRef = "tx_ref"
         case flwRef = "flw_ref"
         case deviceFingerprint = "device_fingerprint"
         case amount
         case chargedAmount = "charged_amount"
         case appFee = "app_fee"
         case merchantFee = "merchant_fee"
         case processorResponse = "processor_response"
         case authModel = "auth_model"
         case currency, ip, narration, status
         case authURL = "auth_url"
         case paymentType = "payment_type"
         case paymentPlan = "payment_plan"
         case fraudStatus = "fraud_status"
         case chargeType = "charge_type"
         case createdAt = "created_at"
         case accountID = "account_id"
         case customer, card
     }
    
//    enum CodingKeys: String, CodingKey {
//           case id, txRef, orderRef, flwRef
//           case redirectURL = "redirectUrl"
//           case deviceFingerprint = "device_fingerprint"
//           case settlementToken = "settlement_token"
//           case cycle, amount
//           case chargedAmount = "charged_amount"
//           case appfee, merchantfee, merchantbearsfee, chargeResponseCode, raveRef, chargeResponseMessage, authModelUsed, currency
//           case ip = "IP"
//           case narration, status, modalauditid, vbvrespmessage, authurl, vbvrespcode, acctvalrespmsg, acctvalrespcode, paymentType, paymentPlan, paymentPage
//           case paymentID = "paymentId"
//           case fraudStatus = "fraud_status"
//           case chargeType = "charge_type"
//           case isLive = "is_live"
//           case retryAttempt = "retry_attempt"
//           case getpaidBatchID = "getpaidBatchId"
//           case createdAt, updatedAt, deletedAt
//           case customerID = "customerId"
//           case accountID = "AccountId"
//           case chargeToken, customercandosubsequentnoauth, customer, card
//       }
}

// MARK: - Card
public struct CardData:Codable {
    let first6Digits, last4Digits, issuer, country: String?
    let type, expiry: String?
    
    enum CodingKeys: String, CodingKey {
           case first6Digits = "first_6digits"
           case last4Digits = "last_4digits"
           case issuer, country, type, expiry
       }
}

// MARK: - ChargeToken
struct ChargeToken: Codable {
    let userToken, embedToken: String

    enum CodingKeys: String, CodingKey {
        case userToken = "user_token"
        case embedToken = "embed_token"
    }
}

// MARK: - Customer
public struct Customer:Codable {
    let id: Int?
    let phoneNumber: String?
    let name, email, createdAt: String?
    enum CodingKeys: String, CodingKey {
          case id
          case phoneNumber = "phone_number"
          case name, email
          case createdAt = "created_at"
      }
}

// MARK: - Meta
struct Meta:Codable {
    let authorization: Authorization?
}

// MARK: - Authorization
struct Authorization:Codable {
    let mode, endpoint,redirect,note,validateInstructions, transferReference, accountExpiration, transferBank, transferAccount, transferNote: String?
    let transferAmount:Double?
    
    enum CodingKeys: String, CodingKey {
        case transferReference = "transfer_reference"
        case transferBank = "transfer_bank"
        case accountExpiration = "account_expiration"
        case transferAccount = "transfer_account"
        case transferNote = "transfer_note"
        case transferAmount = "transfer_amount"
        case validateInstructions = "validate_instructions"
        case mode,endpoint,redirect,note
    
    }
}


protocol FlutterChargeResponse {
    var meta:Meta? { get }
}


extension ChargeData {
    func toFlutterResponse() -> FlutterwaveDataResponse{
        return FlutterwaveDataResponse(txRef: txRef, flwRef: flwRef, deviceFingerprint: deviceFingerprint, amount: amount, chargedAmount: chargedAmount, appFee: appFee, merchantFee: merchantFee, processorResponse: processorResponse, authModel: authModel, currency: currency, ip: ip, narration: narration, status: status, authURL: authURL, paymentType: paymentType, fraudStatus: fraudStatus, chargeType: chargeType, createdAt: createdAt, paymentPlan: paymentPlan, id: id, accountID: accountID, customer: customer, card: card)
    }
}
