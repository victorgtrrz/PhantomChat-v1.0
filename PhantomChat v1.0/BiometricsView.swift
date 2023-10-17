//
//  BiometricsView.swift
//  PhantomChat v1.0
//
//  Created by Victor Gutierrez Gutierrez on 17/10/2023.
//

import SwiftUI
import LocalAuthentication

struct BiometricsView: View {
    @State private var isAuthenticated = false

    var body: some View {
        VStack {
            if (isAuthenticated) {
                SplashScreenView()
            } else {
                Button(action: {
                    authentication()
                }, label: {
                    VStack {
                        Image(systemName: "faceid")
                            .font(.system(size: 100))
                        Text("Biometric authentication required")
                            .font(.caption)
                            .padding(.top, 30)
                    }
                    .foregroundColor(.white)
                })
            }
        }
    }
    
    private func authentication() {
        print("Autenticación exitosa")
        var error: NSError?
        
        let laContext = LAContext()
        if laContext.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
            
            laContext.evaluatePolicy(
                .deviceOwnerAuthenticationWithBiometrics, localizedReason: "Authentication in progress...") { authenticated, error in
                    
                    if authenticated {
                                        print("Autenticación exitosa")
                                        isAuthenticated = true
                                    } else {
                                        print("Autenticación fallida")
                                        isAuthenticated = false
                                    }
                    
                }
            
        } else {
            isAuthenticated = true
        }
    }
}

#Preview {
    BiometricsView().preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}
