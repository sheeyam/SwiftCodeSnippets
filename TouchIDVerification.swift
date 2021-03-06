//Create Local Authentication Context
let authenticationContext = LAContext()
        
var error:NSError?
guard authenticationContext.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) else {
    print("No Apple TouchID Sensor Has Been Detected. This device does not support Touch Id.")
    return
}
        
authenticationContext.evaluatePolicy(LAPolicy.deviceOwnerAuthenticationWithBiometrics, 
            localizedReason: "Only device owner is allowed", reply: { (success, error) -> Void in
            if( success ) {
                print("Fingerprint recognized.")
                //Call you Custom Functions
            } else {
                // Check if there is an error
                if let errorObj = error {
                    print("Error took place. \(errorObj.localizedDescription)")
                }  
            }
})
