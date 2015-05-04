# iVersionDemo
自定 iVersion
版本检查提示框，包括区域（中国），有最新版本，检查版本错误（如未上架，未匹配到等），已经是最新版本的几种提示，去掉忽略按钮。

####使用
1. 在`AppDelegate.m`文件中，添加`+ (void)initialize`
  
  ```Objective-C
  + (void)initialize
  {
  //    指定特定App的 BundleID
  //    [iVersion sharedInstance].applicationBundleID = @"com.tencent.xin"; 
  //    指定国家，若不设置，可能会显示英文
      [iVersion sharedInstance].appStoreCountry = @"cn";
  }
  ```
2. 在`application:didFinishLaunchingWithOptions`方法中设置`delegate`
  
  ```Objective-C
  - (BOOL)application:(UIApplication *)application 
  didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
      
     self.versionDelegate = [[iVersionDelegate alloc] init];
     [[iVersion sharedInstance] setDelegate:self.versionDelegate];
      return YES;
  }
  ```
3. 默认会在App 一启动的时候出发版本检查，如果需要主动检查版本更新，只要调用`iVersion`的`checkForNewVersion`方法就好

  ```Objective-C
  [[iVersion sharedInstance] checkForNewVersion];
  ```
