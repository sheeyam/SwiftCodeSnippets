// Create a global instance of NSUserDefaults class
let defaults = UserDefaults.standard
        
// Storing Values of different times
defaults.set(15, forKey: "age")
defaults.set(true, forKey: "isActive")
defaults.set(55.5, forKey: "price")
defaults.set("Sheeyam", forKey: "firstName")
defaults.set(NSDate(), forKey: "currentDate")
        
let foods = ["Burger", "Pizza"]
defaults.set(foods, forKey: "foodNames")        
        
// Reading from NSUserDefaults.
let ageValue = defaults.integer(forKey: "age")
print("age value = \(ageValue)")
        
let isUserActive = defaults.bool(forKey: "isActive")
print("isUserActive value = \(isUserActive)")
        
let priceValue = defaults.double(forKey: "price")
print("price value = \(priceValue)")
        
let firstNameValue = defaults.object(forKey: "firstName") as! String
print("First Name value = \(firstNameValue)")
        
let currentDateValue = defaults.object(forKey: "currentDate") as! NSDate
print("Current date value = \(currentDateValue)")
        
let foodNamesArray = defaults.object(forKey: "foodNames") as? [String] ?? [String]()
print("Food names Array count \(foodNamesArray.count)")
print("First element in array \(foodNamesArray[0])")
