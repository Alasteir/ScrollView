

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var horizontallyScrollableStackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        for _ in 0...10 {
            if let dayView = Bundle.main.loadNibNamed("DayView", owner: nil, options: nil)!.first as? DayView {
                dayView.translatesAutoresizingMaskIntoConstraints = false
                dayView.widthAnchor.constraint(equalToConstant: horizontallyScrollableStackView.frame.height).isActive = true
                dayView.titleLabel.text = "Friday"
                dayView.detailLabel.text = "Chto-to vazhnoye!"
                horizontallyScrollableStackView.addArrangedSubview(dayView)
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

