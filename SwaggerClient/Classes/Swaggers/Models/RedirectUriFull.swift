//
// RedirectUriFull.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class RedirectUriFull: JSONEncodable {

    /** Redirect URI ID */
    public var id: Int32?
    /** The Uniform Resource Identifier is a string used to identify the path to be redirected */
    public var uri: String?
    /** redirect */
    public var type: String?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["uri"] = self.uri
        nillableDictionary["type"] = self.type

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
