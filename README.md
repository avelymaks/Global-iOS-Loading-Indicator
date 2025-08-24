# Global-iOS-Loading-Indicator
A simple loading indicator you can access from anywhere

It's very easy to use. 

Rather than declaring a new UIActivityIndicatorView each time, you can just call this one from anywhere in your project. 

Wherever you start loading, you call this:
```
LoadingIndicator.shared.show(on: self.view) // 'self.view' will show it in the main view. But if you want it to be displayed in a subview, change it accordingly
```

To stop loading (once a call is complete):
```
LoadingIndicator.shared.hide()
```

That's pretty much it. It's super easy to use. 
