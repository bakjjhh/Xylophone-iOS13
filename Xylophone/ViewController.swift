import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {

        playSound(musicKey: sender.currentTitle!)
        
        
       
    }
    
    func playSound(musicKey:String) {
        
        let url = Bundle.main.url(forResource: musicKey, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}

