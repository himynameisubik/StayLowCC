#import "StayLowCC.h"

%hook CCUIModularControlCenterOverlayViewController
- (void)presentAnimated:(BOOL)arg1 withCompletionHandler:(/*^block*/id)arg2 {
	%orig;

	if (self.overlayInterfaceOrientation == 1) {
		CGFloat scrollViewHeight = self.overlayScrollView.frame.size.height;
		CGRect overlayContainerViewFrame = self.overlayContainerView.frame;
		overlayContainerViewFrame.origin.y = scrollViewHeight - self.overlayContainerView.frame.size.height - 124;
		self.overlayContainerView.frame = overlayContainerViewFrame;
	}
}

- (void)viewWillTransitionToSize:(CGSize)arg1 withTransitionCoordinator:(id)arg2 {
	%orig;

	if (self.overlayInterfaceOrientation == 1) {
		CGFloat scrollViewHeight = self.overlayScrollView.frame.size.height;
		CGRect overlayContainerViewFrame = self.overlayContainerView.frame;
		overlayContainerViewFrame.origin.y = scrollViewHeight - self.overlayContainerView.frame.size.height - 124;
		self.overlayContainerView.frame = overlayContainerViewFrame;
	}
}
- (void)viewWillLayoutSubviews {
	%orig;

	if (self.overlayInterfaceOrientation == 1) {
		CGFloat scrollViewHeight = self.overlayScrollView.frame.size.height;
		CGRect overlayContainerViewFrame = self.overlayContainerView.frame;
		overlayContainerViewFrame.origin.y = scrollViewHeight - self.overlayContainerView.frame.size.height - 124;
		self.overlayContainerView.frame = overlayContainerViewFrame;
	}
}

%end

