import UIKit

class LoadingIndicator {
    
    static let shared = LoadingIndicator()
    private var containerView: UIView!
    private var activityIndicator: UIActivityIndicatorView!
    
    private init() {}

    // Presents the indicator (starts loading)
    func show(on view: UIView) {
        // Avoids showing multiple times
        if containerView != nil { return }
        
        // Full-screen container
        containerView = UIView(frame: view.bounds)
        containerView.backgroundColor = UIColor(white: 0, alpha: 0.3) // dimmed background
        
        // Centered the indicator in the view
        activityIndicator = UIActivityIndicatorView(style: .large)
        activityIndicator.center = containerView.center
        activityIndicator.startAnimating()
        
        containerView.addSubview(activityIndicator)
        view.addSubview(containerView)
        
        // Optional animation
        containerView.alpha = 0
        UIView.animate(withDuration: 0.25) {
            self.containerView.alpha = 1
        }
    }

    // Hides / removes the indicator from the view (stops loading)
    func hide() {
        guard containerView != nil else { return }
        
        UIView.animate(withDuration: 0.25, animations: {
            self.containerView.alpha = 0
        }) { _ in
            self.activityIndicator.stopAnimating()
            self.activityIndicator.removeFromSuperview()
            self.containerView.removeFromSuperview()
            self.activityIndicator = nil
            self.containerView = nil
        }
    }
}
