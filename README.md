# Global-iOS-Loading-Indicator
A simple loading indicator you can access from anywhere

Loading indicators are a great way to show your user that something is happening, and it assures them that your app didn't freeze. While you may know that a certain function should take a couple of seconds, most users don't want to wait that long without seeing something happen. So, loading indicators are a necessity.

I always want to use loading indicators but I hate having to set them up. So I made this one. It's very simple to use. 


Documentation:
Rather than declaring a new UIActivityIndicatorView each time, you can just call this one from anywhere in your project. 

Wherever you start loading, you call this:
```
LoadingIndicator.shared.show(on: self.view) // 'self.view' will show it in the main view. But if you want it to be displayed in a subview, change it accordingly
```

To stop loading (once a call is complete):
```
LoadingIndicator.shared.hide()
```

That's pretty much it. It's super easy to use and I have a lot of uses for it in my projects.
