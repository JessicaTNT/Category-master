# Category-master
常用类别
# Install

if you are using AutoLayout:

```
pod 'HandyAutoLayout'
```

if you are using Frame:

```
pod 'HandyFrame'
```


# Examples

for auto layout:

```objective-c
[self.view addConstraint:[self.tableView constraintCenterXEqualToView:self.view]];
[self.view addConstraint:[self.tableView constraintWidthEqualToView:self.view]];

[self.view addConstraints:[self.nextStepButton constraintsSize:CGSizeMake(300.0f, 40.0f)]];
[self.view addConstraint:[self.nextStepButton constraintCenterXEqualToView:self.view]];
```
for frame:

```objective-c
[self.subtitleLabel leftEqualToView:self.titleLabel];
[self.subtitleLabel top:14 FromView:self.timeLabel];

[self.createPost centerXEqualToView:self.view];
[self.createPost bottomInContainer:19.0f shouldResize:NO];
```
