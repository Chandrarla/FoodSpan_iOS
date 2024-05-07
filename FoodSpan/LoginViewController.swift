import UIKit
import Then
import SnapKit

class LoginViewController: UIViewController {
    
    // MARK: - Property
    
    
    // MARK: - Component
    
    private let logoImageView = UIImageView()
    private let idTextField = UITextField()
    private let pwTextField = UITextField()
    private let loginButton = UIButton()
    private let findPwButton = UIButton()
    private let createAccountButton = UIButton()
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUI()
        setViewHierarchy()
        setAutoLayout()
    }
    // MARK: - Set UI
    
    func setUI() {
        view.backgroundColor = .lightGray
        
        idTextField.do {
            $0.setText(
                placeholder: "Id",
                textColor: .black,
                backgroundColor: .white,
                placeholderColor: .black,
                font: UIFont(name: "Pretendard-Regular", size: 13)
            )
            $0.setLayer(
                borderColor: .black,
                borderWidth: 1,
                cornerRadius: 3
            )
            $0.addPadding(left: 10)
        }
        
        pwTextField.do {
            $0.setText(
                placeholder: "Pw",
                textColor: .black,
                backgroundColor: .white,
                placeholderColor: .black,
                font: UIFont(name: "Pretendard-Regular", size: 13)
            )
            $0.setLayer(
                borderColor: .black,
                borderWidth: 1,
                cornerRadius: 3
            )
            $0.addPadding(left: 10)
        }

        
        logoImageView.do {
            $0.image = UIImage(named: "ImageLogo")
        }
        
        loginButton.do {
            $0.setTitle(
                title: "Login",
                titleColor: .white,
                font: UIFont(name: "Pretendard-Bold", size: 15)
            )
            $0.setLayer(borderWidth: 1)
            $0.backgroundColor = .prjBlue
            $0.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
        }
        
        findPwButton.do {
            $0.setTitle(
                title: "Forgot Password?",
                titleColor: .prjBlue,
                font: UIFont(name: "Pretendard-Regular", size: 13)
            )
        }
    }
    
    func setViewHierarchy() {
        view.addSubviews(
            logoImageView,
            idTextField,
            pwTextField,
            loginButton,
            findPwButton
        )
    }
    
    // MARK: - AutoLayout
    
    func setAutoLayout() {
        let safeArea = view.safeAreaLayoutGuide
        
        logoImageView.snp.makeConstraints{
            $0.width.equalTo(150)
            $0.height.equalTo(150)
            $0.centerX.equalToSuperview()
            $0.top.equalTo(safeArea.snp.top).offset(50)
        }
        
        idTextField.snp.makeConstraints {
            $0.top.equalTo(logoImageView.snp.bottom).offset(30)
            $0.horizontalEdges.equalTo(safeArea).inset(20)
            $0.height.equalTo(40)
        }
        
        pwTextField.snp.makeConstraints {
            $0.top.equalTo(idTextField.snp.bottom).offset(20)
            $0.horizontalEdges.equalTo(safeArea).inset(20)
            $0.height.equalTo(40)
        }
        
        loginButton.snp.makeConstraints {
            $0.top.equalTo(pwTextField.snp.bottom).offset(40)
            $0.horizontalEdges.height.equalTo(pwTextField)
        }
        findPwButton.snp.makeConstraints{
            $0.top.equalTo(loginButton.snp.bottom).offset(10)
            $0.height.equalTo(10)
            $0.horizontalEdges.equalTo(loginButton)
        }
    }
    
    
    // MARK: - Action
    
    @objc
    func loginButtonTapped(_ sender: UIButton) {
        guard let id = idTextField.text, !id.isEmpty else {return}
        moveToFridgeVC(with: id)
    }
    
    @objc
    func moveToFridgeVC(with id: String){
        guard let id = idTextField.text else { return }
        let vc = FridgeViewController(id: id)
        navigationController?.pushViewController(vc, animated: true)
    }
    // MARK: - Extension
    
    
    // MARK: <#___#>Delegate
    
    
    
}
