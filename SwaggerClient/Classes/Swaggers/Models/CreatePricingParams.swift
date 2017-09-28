//
// CreatePricingParams.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class CreatePricingParams: JSONEncodable {

    /** Pricing plan code */
    public var pricingId: Int32?
    /** Reason this pricing plan is added to the subaccount */
    public var reason: String?
    /** Pricing plan expiration time in UNIX format. Disregard or set it to null for plan which never expires */
    public var expireDate: Int32?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["pricing_id"] = self.pricingId?.encodeToJSON()
        nillableDictionary["reason"] = self.reason
        nillableDictionary["expire_date"] = self.expireDate?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}