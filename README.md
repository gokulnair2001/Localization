# 🔠 Localization 
Ever wondered how app localize with native languages, lets understand how Localization works in iOS.

Lets understand how Localizations works in iOS, Now in order to localize with languages apps just replaces the existing english word with value it 
is provided in the required language.

There are three main steps for localization:

1. Add Localizations in the project section
2. Add the extension given below to all the string
3. Add the Key:Value for languages in the Localizable file

***For eg: For Hello in english -> नमस्ते in hindi***  just provide the value of Hello in the Localizable string folder.

# 📌 Localization Extension
```swift
//MARK: - Extension for Localization
extension String {
    func localized() -> String {
        return NSLocalizedString(self, tableName: "Localizable", bundle: .main, value: self, comment: self)
    }
}
```
***Make sure the Key:Value file folder is named the same as given in tableName above***

# 📱 Snapshots
| English | Hindi |
| -- | -- |
| | |
