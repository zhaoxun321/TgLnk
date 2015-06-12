//
//  BoardsTableViewController.h
//  TgLnk
//
//  Created by shepard zhao on 7/04/2015.
//  Copyright (c) 2015 com.xunzhao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LoginViewController.h" //import this for login segue
#import "QRCodeReaderDelegate.h"
#import "QRCodeReaderViewController.h"
#import "SystemUIViewControllerModel.h"
#import "BoardWebViewViewController.h"
#import "SysNsObject.h"
#import "MJRefresh.h"
#import "DatabaseModel.h"
#import "BoardsTableViewCell.h"
#import "MBProgressHUD.h"
#import "BoardDetailTableViewController.h"
#import "IDMPhotoBrowser.h"
#import "NetworkCheckModel.h"

@interface BoardsTableViewController : UITableViewController<IDMPhotoBrowserDelegate,QRCodeReaderDelegate,UIAlertViewDelegate,MBProgressHUDDelegate>
@property (weak,nonatomic) NSString *qrAddress;
@property DatabaseModel *db;
@property (strong, nonatomic) NSMutableArray *dataSource;
@property (retain ,nonatomic) MBProgressHUD *HUD;

@end
