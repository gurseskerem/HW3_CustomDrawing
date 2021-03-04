//
//  Draw.h
//  HW3_CustomDrawing
//
//  Created by Kerem Gurses on 4.03.2021.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Draw : UIView
@property (nonatomic) float unit_x,unit_y;
@property (nonatomic,strong) IBOutlet UILabel *cityLabel;
@end

NS_ASSUME_NONNULL_END
