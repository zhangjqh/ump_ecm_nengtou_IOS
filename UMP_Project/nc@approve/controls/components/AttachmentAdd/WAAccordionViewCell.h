#import <Foundation/Foundation.h>

typedef enum
{
	CWATableViewCellTypeFile,
	CWATableViewCellTypeDirectory
}CWAAccordionViewCellType;


@interface CWAAccordionViewCell : UITableViewCell
{
@private
	IBOutlet UIImageView *iDirectoryAccessoryImageView;
	CWAAccordionViewCellType iCellType;
	BOOL expanded;
}

@property (nonatomic) CWAAccordionViewCellType iCellType;
@property (nonatomic, getter=isExpanded) BOOL expanded;
@property (nonatomic, retain) IBOutlet UIImageView *iDirectoryAccessoryImageView;

- (id) initWithReuseIdentifier:(NSString *)reuseIdentifier;

@end
