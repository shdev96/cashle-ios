import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewModel()
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 120)
                    .padding()
                
                VStack {
                    TextField("이메일을 입력하세요", text : $viewModel.email)
                        .autocapitalization(.none)
                        .modifier(TextFieldModifier())
                    SecureField("비밀번호를 입력하세요", text : $viewModel.password)
                        .modifier(TextFieldModifier())
                }
                
                NavigationLink {
                    Text("비밀번호를 잃어버리셨나요?")
                } label: {
                    Text("비밀번호를 잃어버리셨나요?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.vertical)
                        .padding(.trailing, 28)
                        .foregroundColor(Color("Cpurple"))
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
                .padding(.bottom)
                
                Button {
                    
                } label: {
                    Text("로그인")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 352, height: 44)
                        .background(Color("Cpurple"))
                        .cornerRadius(8)
                }
                Spacer()
                
                Divider()
                
                NavigationLink {
                    RegistrationView().navigationBarBackButtonHidden(true)
                } label: {
                    HStack(spacing: 3) {
                        Text("회원이 아니신가요?")
                        
                        Text("회원 가입하기")
                    }
                    .font(.footnote)
                    .foregroundColor(Color("Cpurple"))
                }
                .padding(.top, 16)
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
