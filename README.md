# iOSImageWebCache

@interface UIImageView (MHImageWebCache)

/*!
 *  @author Macro QQ:778165728, 15-10-14
 *
 *  @brief  加载网络图片
 *
 *  @param urlStr    网络图片地址
 *  @param imageName 未加载时的占位图片
 */
- (void)setWebImageWithUrlStr:(NSString *)urlStr placeholderImageName:(NSString *)imageName;

@end
