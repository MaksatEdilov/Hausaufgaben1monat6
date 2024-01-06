//
//  UserSessionManager.swift
//  Hausaufgaben1monat6
//
//  Created by Maksat Edil on 6/1/24.
//

import Foundation

class UserSessionManager {
    static let shared = UserSessionManager()
    
    private init() {
        
    }
    
    func saveUserSession() {
        let twoMinute = Calendar.current.date(byAdding: .minute, value: 2, to: Date())!
        UserDefaultManager.shared.setValue(twoMinute, forkey: .session)
    }
    
    func getSession() -> Date? {
        UserDefaultManager.shared.getObject(forkey: .session) as? Date
    }
    
    func deleteSession() {
        UserDefaultManager.shared.removeObject(forkey: .session)
    }
}
