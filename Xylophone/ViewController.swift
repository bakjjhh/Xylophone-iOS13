import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        let musicNote = sender.currentTitle
        
        playSound()
        
        func playSound() {
            
            let url = Bundle.main.url(forResource: musicNote, withExtension: "wav")
            player = try! AVAudioPlayer(contentsOf: url!)
            player.play()
                    
        }
        
       
    }
    
}

