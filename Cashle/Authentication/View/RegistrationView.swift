import SwiftUI

struct RegistrationView: View {
    @StateObject var viewModel = RegistrationViewModel()
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Spacer()
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120)
                .padding()
            
            VStack {
                TextField("이메일을 입력해 주세요", text: $viewModel.email)
                    .autocapitalization(.none)
                    .modifier(TextFieldModifier())
                
                SecureField("비밀번호를 입력해 주세요", text: $viewModel.password)
                    .modifier(TextFieldModifier())
                
                SecureField("비밀번호를 한번 더 입력해 주세요", text: $viewModel.rePassword)
                    .modifier(TextFieldModifier())
                
                TextField("닉네임을 입력해 주세요", text: $viewModel.username)
                    .modifier(TextFieldModifier())
            }
            
            Button {
                
            } label: {
                Text("Sign Up")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 352, height: 44)
                    .background(Color("Cpurple"))
                    .cornerRadius(8)
            }
            .padding(.vertical)
            
            Spacer()
            
            Divider()
            
            Button {
                dismiss()
            } label: {
                HStack(spacing: 3) {
                    Text("이미 회원이신가요?")
                    
                    Text("로그인")
                }
                .foregroundColor(Color("Cpurple"))
                .font(.footnote)
            }
            .padding(.vertical, 16)
        }
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
