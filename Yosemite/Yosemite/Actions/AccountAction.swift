import Foundation
import Networking



// MARK: - AccountAction: Defines all of the Actions supported by the AccountStore.
//
public enum AccountAction: Action {
    case loadAccount(userID: Int, onCompletion: (Account?) -> Void)
    case loadSite(siteID: Int, onCompletion: (Site?) -> Void)
    case synchronizeAccount(onCompletion: (Account?, Error?) -> Void)
    case synchronizeAccountSettings(userID: Int, onCompletion: (AccountSettings?, Error?) -> Void)
    case synchronizeSites(onCompletion: (Error?) -> Void)
    case synchronizeSitePlan(siteID: Int, onCompletion: (Error?) -> Void)
    
    /// Updates a given AccountSettings' tracksOptOut setting.
    ///
    case updateAccountSettings(userID: Int, tracksOptOut: Bool, onCompletion: (Error?) -> Void)
}
