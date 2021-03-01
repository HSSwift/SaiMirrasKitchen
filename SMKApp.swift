//
//  SMKApp.swift
//  SMK
//
//  Created by Sathish Damodaran on 12/26/20.
//

import SwiftUI
import Firebase
import GoogleSignIn

@main
struct SMKApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}


class AppDelegate: NSObject,UIApplicationDelegate, GIDSignInDelegate,ObservableObject {
    
    @Published var email = ""
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        FirebaseApp.configure()
        
        GIDSignIn.sharedInstance().clientID = FirebaseApp.app()?.options.clientID
        GIDSignIn.sharedInstance().delegate = self
        
        return true
        
    }
    func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error!) {
        
        guard let user = user else{return}
        
        let credential = GoogleAuthProvider.credential(withIDToken: user.authentication.idToken, accessToken: user.authentication.accessToken)
        
        Auth.auth().signIn(with: credential) { (result,err) in
            
            if err != nil{
                
                print((err?.localizedDescription)!)
            }
            self.email = (result?,user.email) //This is where the error is at!
            
            print(result?.user.email)
    }
        
    
    
    func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error!) {
    
        print(error.localizedDescription)
    }
}
