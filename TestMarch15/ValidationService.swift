//
//  ValidationService.swift
//  TestMarch15
//
//  Created by Consultant on 3/15/22.
//

import Foundation

struct User {
    let username:String
    let password:String
   // let userInput:Int
}




struct ValidationService {
    
    func validateUserName(_ username:String?) throws -> String {
        
        guard let username = username else {throw ValidationError.invalidEntry }
        guard username.count > 10 else { throw ValidationError.usernameTooLong}
        guard username.count < 3 else { throw ValidationError.usernameTooShort}
        
        return username
    }
        
    func validatePassword (_ password :String?) throws -> String{
        guard let password = password else {throw ValidationError.invalidEntry}
        guard password.count > 3 else {throw ValidationError.passwordTooShort}
        guard password.count < 10 else {throw ValidationError.passwordTooLong}
        return password
    }
    
//    func validateUserInput (_ userInput :Int?) throws -> Int{
//        //guard let userInput = userInput else {throw ValidationError.zeroUserImput}
//
//        guard userInput == 0  else {throw ValidationError.zeroUserImput}
//
//        return userInput!
//    }
     
    
    
     
    
    
}

enum ValidationError: LocalizedError {
    case invalidEntry
    case usernameTooShort
    case usernameTooLong
    case passwordTooLong
    case passwordTooShort
    //case zeroUserImput
   
    
}
