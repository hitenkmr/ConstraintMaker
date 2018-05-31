# ConstraintMaker
ConstraintMaker allows you to bind views programatically. It's a light-weight class which wraps AutoLayout with nice and clean syntax. ConstraintMaker provide it's own NSLayoutConstraintresulting in code that is more concise and readable.

For Example clone the repo or just download and go to DemoProject and run it, After running the project you will find how easy it is to manage views programatically with ConstraintMaker.swift class.

### Difficulty with Autolayout

Suppose that we have to bind a view from the 4 ends to the superview with 50 margin, then we have to write a huge lines of code.

```
   let view1 = UIView.init()
   view1.translatesAutoresizingMaskIntoConstraints = false
   view1.backgroundColor = UIColor.red
   superView.addSubview(view1)
   superView.addConstraints([
   NSLayoutConstraint.init(item: view1, 
            attribute: NSLayoutAttribute.leading, 
            relatedBy: .equal, 
            toItem: self,
            attribute: NSLayoutAttribute.leading, 
            multiplier: 1.0, 
            constant: 20),
            NSLayoutConstraint.init(item: view1, 
            attribute: NSLayoutAttribute.trailing, 
            relatedBy: .equal, 
            toItem: self, 
            attribute: NSLayoutAttribute.trailing,
            multiplier: 1.0, 
            constant: 20),
            NSLayoutConstraint.init(item: view1, 
            attribute: NSLayoutAttribute.top, 
            relatedBy: .equal, 
            toItem: self, 
            attribute: NSLayoutAttribute.top, 
            multiplier: 1.0, 
            constant: 20),
            NSLayoutConstraint.init(item: view1, 
            attribute: NSLayoutAttribute.bottom, 
            relatedBy: .equal, 
            toItem: self, 
            attribute: NSLayoutAttribute.bottom,
            multiplier: 1.0, 
            constant: 20)
            ])
```            
But using ConstraintMaker with just few lines of code you can have a workaround to make it possible.

```
view1.prepareForNewConstraints { (v) in
            //give leading space from superview
            v?.setLeadingSpaceFromSuperView(leadingSpace: 50)
            //give trailing space from superview
            v?.setTrailingSpaceFromSuperView(trailingSpace: -50)
            //give top space from superview
            v?.setTopSpaceFromSuperView(topSpace: 50)
            //give bottom space from superview
            v?.setBottomSpaceFromSuperView(bottomSpace: -50)
        }
```

### Current Features
 - Manage views programatically.
 - Full support for all devices and rotation.
 - need only few lines to wrap multiple views.
 
### TODO
 - More examples to make better understanding.
 
### Contributions
Just send the pull request and tell what feature to add, if i like then will merge them.
 
