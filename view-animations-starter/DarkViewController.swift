import UIKit

class DarkViewController: UIViewController {

    @IBOutlet weak var blueView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func animate(_ sender: UIButton) {
        
        UIView.animate(withDuration: 1.0,
                       delay: 0.0,
                       options: [],
                       animations: {
                        
                        self.blueView.backgroundColor = .yellow
                        //self.blueView.alpha = 0.0
                        self.blueView.frame.size.width -= 80
                        self.blueView.frame.size.height -= 169
                        
                        //self.blueView.frame.origin.x += 120
                        self.blueView.frame.origin.x -= 50
                        self.blueView.frame.origin.y -= 150
        },
                       completion: { _ in
                        
                        UIView.animate(withDuration: 1.0,
                                       delay: 0.0,
                                       options: [],
                            animations: {
                                
                                self.blueView.frame.origin.x += 170
                        },
                            completion: { _ in
                        
                                UIView.animate(withDuration: 1.0,
                                               delay: 0.0,
                                               options: [],
                                               animations: {
                                                
                                                self.blueView.frame.origin.x -= 120
                                                self.blueView.frame.origin.y += 150
                                                
                                                self.blueView.frame.size.width += 80
                                                self.blueView.frame.size.height += 169
                                },
                                               completion: nil)
                        })
                        
        })
    }
}
