//
//  BoardsTableViewCell.m
//  TgLnk
//
//  Created by shepard zhao on 9/04/2015.
//  Copyright (c) 2015 com.xunzhao. All rights reserved.
//

#import "BoardsTableViewCell.h"

@implementation BoardsTableViewCell

- (void)awakeFromNib {
    // Initialization code
    self.selectionStyle=UITableViewCellSelectionStyleNone;
    
    self.followOrUnFollowBtn = [SystemUIViewControllerModel styleButton:self.followOrUnFollowBtn cornerRadius:6.0f borderWidth:1.0f borderColor:[RGB2UICOLOR(245, 245, 245,1) CGColor]];

}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (IBAction)followAction:(id)sender {
    if ([DatabaseModel queryUserLoginStatus]) {
        //user login delegate
        
        NSLog(@"%@",@"1");
        
    }
    else{
        //add to follow status
        NSLog(@"%@",@"2");

    
    }
}



@end
