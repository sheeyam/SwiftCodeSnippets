import UIKit
  
 class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let remoteImageUrlString = "http://*****/1.jpg"
        let remoteImageUrl:URL = URL(string: remoteImageUrlString)!
        
        // Start background thread so that image loading does not make app unresponsive
        DispatchQueue.global(qos: .userInitiated).async {
            
           let imageData:NSData = NSData(contentsOf: remoteImageUrl)!
           let imageView = UIImageView(frame: CGRect(x:0, y:0, width:200, height:200))
           imageView.center = self.view.center
            
           // When from background thread, UI needs to be updated on main_queue
           DispatchQueue.main.async {
                let image = UIImage(data: imageData as Data)
                imageView.image = image
                imageView.contentMode = UIViewContentMode.scaleAspectFit
                self.view.addSubview(imageView)      
           }
       }
   }
    
   override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
   }
    
}
