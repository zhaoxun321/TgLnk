//
//  MessagesTableViewController.h
//  TgLnk
//
//  Created by shepard zhao on 29/03/2015.
//  Copyright (c) 2015 com.xunzhao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QRCodeReaderDelegate.h"
#import "QRCodeReaderViewController.h"
#import "SystemUIViewControllerModel.h"
#import "BoardWebViewViewController.h"
#import "SysNsObject.h"
#import "MJRefresh.h"

@interface MessagesTableViewController : UITableViewController<QRCodeReaderDelegate,UIAlertViewDelegate>
@property (weak,nonatomic) NSString *qrAddress;

@end