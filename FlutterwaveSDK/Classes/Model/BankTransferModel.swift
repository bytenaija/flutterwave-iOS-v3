//
//  BankTransferModel.swift
//  Alamofire
//
//  Created by Rotimi Joshua on 02/09/2020.
//

import Foundation

 // MARK: - BankTransferRequest
struct BankTransferRequest: Codable {
    let txRef, amount, email, phoneNumber: String?
    let currency: String?
    let duration, frequency: Double?
    let narration: String?
//    let isPermanent: Bool?

    enum CodingKeys: String, CodingKey {
        case txRef = "tx_ref"
        case amount, email
        case phoneNumber = "phone_number"
        case currency, duration, frequency, narration
//        case isPermanent = "is_permanent"
    }
}


// MARK: - BankTransferResponse
struct BankTransferResponse: Codable {
    let status, message: String?
    let meta: BankTransferMeta?
}





// MARK: - Meta
struct BankTransferMeta: Codable {
    let authorization: BankTransferAuthorization
}

// MARK: - Authorization
struct BankTransferAuthorization: Codable {
    let transferReference, transferAccount, transferBank, accountExpiration: String
    let transferNote, transferAmount, mode: String

    enum CodingKeys: String, CodingKey {
        case transferReference = "transfer_reference"
        case transferAccount = "transfer_account"
        case transferBank = "transfer_bank"
        case accountExpiration = "account_expiration"
        case transferNote = "transfer_note"
        case transferAmount = "transfer_amount"
        case mode
    }
}
