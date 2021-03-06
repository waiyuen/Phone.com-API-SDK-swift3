//
// CreateExtensionParams.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class CreateExtensionParams: JSONEncodable {

    public var voicemail: VoicemailInput?
    public var callNotifications: CallNotifications?
    /** Caller ID */
    public var callerId: String?
    /** Extension type */
    public var usageType: String?
    /** Extension number (auto-generated if empty) */
    public var _extension: Int32?
    /** Include in dial-by-name directory */
    public var includeInDirectory: String?
    /** Name (auto-generated if empty) */
    public var name: String?
    /** Contact name */
    public var fullName: String?
    /** Timezone */
    public var timezone: String?
    /** Recording lookup object */
    public var nameGreeting: Any?
    /** Local area code */
    public var localAreaCode: String?
    /** Enable outgoing calls */
    public var enableOutboundCalls: String?
    /** Enable Call Waiting */
    public var enableCallWaiting: String?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["voicemail"] = self.voicemail?.encodeToJSON()
        nillableDictionary["call_notifications"] = self.callNotifications?.encodeToJSON()
        nillableDictionary["caller_id"] = self.callerId
        nillableDictionary["usage_type"] = self.usageType
        nillableDictionary["extension"] = self._extension?.encodeToJSON()
        nillableDictionary["include_in_directory"] = self.includeInDirectory
        nillableDictionary["name"] = self.name
        nillableDictionary["full_name"] = self.fullName
        nillableDictionary["timezone"] = self.timezone
        nillableDictionary["name_greeting"] = self.nameGreeting
        nillableDictionary["local_area_code"] = self.localAreaCode
        nillableDictionary["enable_outbound_calls"] = self.enableOutboundCalls
        nillableDictionary["enable_call_waiting"] = self.enableCallWaiting

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
