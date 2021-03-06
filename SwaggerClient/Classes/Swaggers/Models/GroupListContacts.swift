//
// GroupListContacts.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Contact Group that this contact is filed under. Output is a Group Summary Object. Input is a Group Lookup Object. */
open class GroupListContacts: JSONEncodable {

    /** Integer ID. Read-only. */
    public var id: Int32?
    /** Name */
    public var name: String?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["name"] = self.name

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
