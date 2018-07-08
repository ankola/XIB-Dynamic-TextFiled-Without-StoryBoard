
import UIKit

class First: UIViewController {
    
  var textFields = [UITextField]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NumberOfTextfiled()
    }
   
    func NumberOfTextfiled() {
        
        var Xposition = self.view.frame.width/7
        let Yposition = self.view.frame.height/7

        let txt = UITextField(frame: CGRect(x: Xposition, y: CGFloat(Yposition), width: Xposition * 4, height: Yposition/2))
        txt.backgroundColor = UIColor.gray
        txt.placeholder = "No. of TextField"
        self.view.addSubview(txt)
        self.textFields.append(txt)
        
        Xposition = Xposition*6
        
        let btn = UIButton(frame: CGRect(x: Xposition, y: CGFloat(Yposition), width: self.view.frame.width/7, height: Yposition/2))
        btn.backgroundColor = UIColor.green
        btn.setTitle("Add", for: .normal)
        self.view.addSubview(btn)
         btn.addTarget(self, action: #selector(CreateTF), for: .touchUpInside)
    }
    
    
    @objc func CreateTF() {

        let Xposition = self.view.frame.width/7
        var yPosition = self.view.frame.height/7 * 2
        
        for i in 1...Int((textFields.first?.text!)!)! {
            let txt = UITextField(frame: CGRect(x: Xposition, y: yPosition, width: self.view.frame.width/7 * 5 , height: 30))
            txt.backgroundColor = UIColor.cyan
            txt.layer.borderWidth = 1.0
            txt.layer.cornerRadius = 5.0
            self.view.addSubview(txt)
            yPosition = yPosition + 50
            self.textFields.append(txt)
            txt.tag = i
        }
        secondBtn()
    }
    
    
    func secondBtn() {
        
        let Xposition = self.view.frame.width/7
        let Yposition = self.view.frame.height/7 * 6
        
        let btn = UIButton(frame: CGRect(x: Xposition, y: CGFloat(Yposition), width: self.view.frame.width/7 * 5, height: 30))
        btn.backgroundColor = UIColor.green
        btn.setTitle("Show Data", for: .normal)
        self.view.addSubview(btn)
        btn.addTarget(self, action: #selector(PushToSecond), for: .touchUpInside)
    }
    
    // Push To SecondView
    @objc func PushToSecond() {
        let secvc : SecondViewController = SecondViewController(nibName: "SecondViewController", bundle: nil)
        secvc.no = Int((textFields.first?.text!)!)!
        secvc.arr = textFields
        navigationController?.pushViewController(secvc, animated: true)
    }
}
