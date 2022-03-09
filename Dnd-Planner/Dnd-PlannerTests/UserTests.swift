//
//  UserTests.swift
//  Dnd-PlannerTests
//
//  Created by csuftitan on 3/8/22.
//

import Foundation
import XCTest
@testable import User

class UserTests: XCTestCase {
    
    func test_full_user(){
        var full_user = User()
        full_user.User(username: "vanillabear", password: "chocolatebear", email: "JD@sacredheart.com", phonenumber:  "123-456-7890", DM_status: true, group_status: true)
        XCTAssertEqual(full_user.User("vanillabear", "chocolatebear", "JD@sacredheart.com", "123-456-7890", true, true))
    }
    
    func test_sans_email_user(){
        var test_sans_email_user = User()
        sans_email_user.User(username: "chocolatebear", password: "vanillabear", nil, phonenumber: "916-225-5887", DM_status: false, group_status: true)
        XCTAssertEqual(sans_email_user.User("chocolatebear", "vanillabear", nil, "916-225-5887", false, true))
    }
    
    func test_sans_phonenumber_user(){
        var sans_phonenumber_user = User()
        sans_phonenumber_user.User(username: "molebutt", password: "slammintushy", email:  "elliot.reid@sacredheart.com", nil, DM_status: false, group_status: true)
        XCTAssertEqual(sans_phonenumber_user.User("molebutt", "slammintushy", "elliot.reid@sacredheart.com", nil, false, true))
    }
    
    func test_sans_verification_user(){
        var sans_verification_user = User()
        sans_verification_user.User(username: "jan_itor", password: "squirrelarmy", nil, nil, DM_status: true, group_status: false)
        XCTAssertEqual(sans_verification_user.User("jan_itor", "squirrelarmy", nil, nil, true, false))
    }
}
