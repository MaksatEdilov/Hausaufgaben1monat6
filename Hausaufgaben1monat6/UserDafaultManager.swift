//
//  UserDafaultManager.swift
//  Hausaufgaben1monat6
//
//  Created by Maksat Edil on 6/1/24.
//

import Foundation

class UserDefaultManager {
    
    enum UserDefaultKeys: String {
        case session = "userSession"
        case phone = "userPhone"
    }
    static let shared = UserDefaultManager()
    
    private init() {
        
    }
    
    func setValue(_ value: Any, forkey key: UserDefaultKeys) {
        UserDefaults.standard.setValue(value, forKey: key.rawValue)
    }
    
    func getString(forkey key: UserDefaultKeys) -> String {
        return UserDefaults.standard.string(forKey: key.rawValue) ?? ""
    }
    
    func getObject(forkey key: UserDefaultKeys) -> Any {
        return UserDefaults.standard.string(forKey: key.rawValue) ?? Date()
    }
    
    func removeObject(forkey key: UserDefaultKeys) {
        return UserDefaults.standard.removeObject(forKey: key.rawValue)
    }
}
