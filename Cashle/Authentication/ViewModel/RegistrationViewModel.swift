 import Foundation

class RegistrationViewModel : ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var rePassword = ""
    @Published var fullname = ""
    @Published var username = ""
    
    @MainActor
    func createUser() {
        print("create user")
    }
}
