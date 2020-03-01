//
//  main.m
//  day07-string
//
//  Created by Phoenix Fate on 2020/2/29.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    //如何创建字符串对象
    /*
     通过不同的方式创建字符串,字符串对象储存的位置也不一样
     >如果是通过字符串常量创建,那么字符串对象存储在常量区中
     >如果是通过alloc initWithFormat/stringWithFormat创建,那么字符串对象存储在堆区中
     而且需要注意:
     >不同的平台存储的方式也不一样,如果是Mac平台系统会自动对字符串对象进行优化,但是如果是iOS平台就是两个对象
     >不同的编译器存储的方式也不一样,如果是Xcode6以下并且是在iOS平台,
     那么每次alloc都会创建一个新的对,如果是在Xcode6以上那么alloc多次指向同一块存储空间
     */
    
    //1.通过字符串常量创建
    //注意:如果是通过字符串常量创建对象,并且字符串常量的内容一致,那么如果创建多个字符串对象,多个对象指向同一块存储空间
    NSString *str1=@"1234";
    NSString *str11=@"1234";
    NSLog(@"str1 = %p, str11 = %p", str1 ,str11);
    
    //2.通过alloc init创建
    //只要调用alloc就会在堆内存中开辟一块存储空间
    NSString *str2=[[NSString alloc]initWithFormat:@"rwerwe"];
    NSString *str22=[[NSString alloc]initWithFormat:@"rwerwe"];
    NSLog(@"str2=%p, str22=%p",str2,str22);
    
    //3.通过类工厂方法创建/ stringWithFormat
    //内部其实就是封装了alloc init
    NSString *str3=[NSString stringWithFormat:@"45345"];
    NSString *str33=[NSString stringWithFormat:@"45345"];
    NSLog(@"str3=%p, str33=%p",str3,str33);
    
    /*
     注意:一般情况下,只要是通过alloc或者类工厂方法创建的对象,每次都会在堆内存中开辟一块新的存储空间
     但是如果是通过alloc的initWithString方法除外,因为这个方法是通过copy返回一个字符串对象给我们
     而copy又分为深拷贝和浅拷贝,如果是深拷贝会创建一个新的对象,如果是浅拷贝不会创建一个新的对象,而是直接返回被拷贝的对象的地址给我们
     */
    NSString *str4=[[NSString alloc] initWithString:@"8888"];
    NSString *str44=[[NSString alloc] initWithString:@"8888"];
    NSLog(@"str4=%p, str44=%p",str4,str44);
    
    
    NSLog(@"-------------read file------------");
    /*
     file: 文件路径,
     encoding: 编码英文 iOS-5988-1 中文 GBK GBK2312 , 一般情况填写UTF-8
     error: 如果读取错误, 会将错误信息保存到error中 ,如果读取正确, 就没有error = nil
     注意: 以后在OC方法中但凡看到XXXofFile的方法, 传递的一定是全路径(绝对路径)
     */
    
    NSError *error=nil;
    NSString *path=@"/Users/phoenix/XcodeProjects/ios-xiaomage-01-oc/day07-string/test.txt";
    //读取文件
    NSString *fileString=[NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:&error];
    if (error == nil) {
        NSLog(@"str = %@", fileString);
    }else
    {
        NSLog(@"error = %@", [error localizedDescription]);
    }
    //写入文件
    NSString *content=@"content中文";
    NSString *path2=@"/Users/phoenix/XcodeProjects/ios-xiaomage-01-oc/day07-string/abc.txt";
    BOOL flag=[content writeToFile:path2 atomically:YES encoding:NSUTF8StringEncoding error:nil];
    NSLog(@"flag: %i",flag);
    
    
    
    //读取文件2
    //url格式：url==协议头://主机域名/路径
    //协议头：http/ftp/file
    NSString *urlString=@"file://127.0.0.1/Users/phoenix/XcodeProjects/ios-xiaomage-01-oc/day07-string/abc.txt";
    NSURL *url=[NSURL URLWithString:urlString];
    NSError *erro2=nil;
    NSString *fileString2=[NSString stringWithContentsOfURL:url encoding:(NSUTF8StringEncoding) error:&erro2];
    if (erro2 == nil) {
        NSLog(@"str = %@", fileString2);
    }else
    {
        NSLog(@"error = %@", [erro2 localizedDescription]);
    }
    NSLog(@"-------------read file------------");
    
    //注意:如果加载的资源是本机上的资源,那么URL中的主机地址可以省略
    //虽然主机地址可以省略,但是需要注意,文件路劲中最前面的/不能省略,文件路径最前面的/代表根路径
    //    NSString *path = @"file:///Users/NJ-Lee/Desktop/lnj.txt";
    //    NSURL *url = [NSURL URLWithString:path];
    
    //    NSString *path = @"file:///Users/NJ-Lee/Desktop/lnj.txt";
    //注意:如果是通过NSURL的fileURLWithPath:方法创建URL,那么系统会自动给我们传入的字符串添加协议头(file://),所以字符串中不需要再写file://
    //    注意:开发中一 般情况下,如果是访问本机的资源,创建URL的时候,建议使用fileURLWithPath方法创建
    //因为url不支持中文,如果URL中包含中文,那么无法访问;但是如果是通过fileURLWithString方法创建URL,哪怕URL中包含中文也可以进行访问,系统内部会自动对URL中包含的中文进行处理
    //    NSURL *url = [NSURL fileURLWithPath:path];
    
    NSString *path3 = @"file:///Users/NJ-Lee/Desktop/未命名文件夹/lnj.txt";
    //如果URL中包含中文,又非不通过fileURLWithPath创建,也可以破
    //如果想破就必须在创建URL之前先对字符串中的中文进行处理,进行百分号编码
    NSLog(@"处理前:%@", path3);
    path3 = [path3 stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
    NSLog(@"处理后:%@", path3);
    
    NSURL *url3 = [NSURL URLWithString:path3];
    NSLog(@"url = %@", url3);
    
    
    NSURL *url4=[NSURL fileURLWithPath:path];
    NSError *erro3=nil;
    NSString *fileString3=[NSString stringWithContentsOfURL:url4 encoding:(NSUTF8StringEncoding) error:&erro3];
    if (erro3 == nil) {
        NSLog(@"str = %@", fileString3);
    }else
    {
        NSLog(@"error = %@", [erro3 localizedDescription]);
    }
    NSLog(@"-------------read file------------");
    
    
    
    //写入文件2
    NSString *content5=@"url 写入测试";
    NSString *path5=@"/Users/phoenix/XcodeProjects/ios-xiaomage-01-oc/day07-string/def.txt";
    NSURL *url5=[NSURL fileURLWithPath:path5];
    [content5 writeToURL:(url5) atomically:(YES) encoding:(NSUTF8StringEncoding) error:nil];
    
    
    
    //字符串比较
    NSLog(@"-------------string compare------------");
    NSString *stringCompare1=@"123";
    NSString *stringCompare2=@"123";
    // 比较两个字符串的"内容"是否相同
    BOOL result1=[stringCompare1 isEqualToString:stringCompare2];
    NSLog(@"%i",result1);
    
    // 下面这个方法, 是比较两个字符串的"地址"是否相同
    result1 = (stringCompare1 == stringCompare2);
    NSLog(@"%i",result1);
    
    
    // 比较字符串的大小
    // NSOrderedAscending  前面的小于后面的
    // NSOrderedSame,  两个字符串相等
    // NSOrderedDescending  前面的大于后面的
    NSComparisonResult result2=[stringCompare1 compare:stringCompare2];
    NSLog(@"%li",(long)result2);
    
    // 忽略大小写进行比较
    NSComparisonResult result3=[stringCompare1 caseInsensitiveCompare:stringCompare2];
    NSLog(@"%li",(long)result3);
    
    
    
    //字符串搜索
    NSString * stringIndex=@"http://www.520it.com/img/lnj.gif";
    // 1.判断是否以什么开头
    // 本质就是从字符串的第一个字符开始匹配, 只要不匹配就返回NO
    BOOL isHasPrefix=[stringIndex hasPrefix:@"http://"];
    NSLog(@"isHasPrefix: %i",isHasPrefix);
    
    BOOL isHasSuffix=[stringIndex hasSuffix:@".gif"];
    NSLog(@"isHasSuffix: %i",isHasSuffix);
    
    
    NSLog(@"%ld",(signed long)NSNotFound);
    NSRange range=[stringIndex rangeOfString:@"520"];
    if(range.location==NSNotFound){
        NSLog(@"str中没有需要查找的字符串");
    }else{
        NSLog(@"str中有需要查找的字符串");
        NSLog(@"location = %lu, length = %lu", range.location, range.length);
    }
    
    NSLog(@"-------------string compare------------");
    
    
    NSLog(@"-------------string substring------------");
    
    NSString *stringTotal = @"<head>小码哥</head>";
    NSUInteger startIndex=[stringTotal rangeOfString:@">"].location+1;
    NSUInteger subStringLength=[stringTotal rangeOfString:@"</"].location-startIndex;
    
    //NSRange 结构体；location，length
    //    NSRange subRange={6,3};
    // 只要是OC提供的结构体, 一般都可以使用NSMakeXXX来创建
    NSRange subRange=NSMakeRange(startIndex, subStringLength);
    
    
    
    NSString *subString=[stringTotal substringWithRange:subRange];
    NSLog(@"sub string: %@",subString);
    
    //从index截取到尾部
    NSString *end=[stringTotal substringFromIndex:5];
    NSLog(@"sub string from index: %@",end);
    
    //从开头开始截取，一直截取到index位置
    NSString *start=[stringTotal substringToIndex:6];
    NSLog(@"sub string to index: %@",start);
    
    
    NSLog(@"-------------string substring------------");
    
    
    
    
    NSLog(@"-------------string replace------------");
    NSString *stringReplace =@"http:&&www.520it.com&img&lnj.gif";
    
    NSString *newStringReplace=[stringReplace stringByReplacingOccurrencesOfString:@"&" withString:@"\\"];
    NSLog(@"new string replace: %@",newStringReplace);
    
    
    
    NSLog(@"-------------string replace------------");
    
    
    
    
    
    NSLog(@"-------------string path------------");
    NSString *stringPath = @"User/lnj/Desktop/lnj.jpg";
    // 1.判断是否是绝对路径
    if([stringPath isAbsolutePath])
    {
        NSLog(@"是绝对路径");
    }else{
        NSLog(@"不是绝对路径");
    }
    // 2.获取文件路径中的最后一个目录
    // 本质就是获取路径中最后一个/后面的内容
    NSString *newPathContent = [stringPath lastPathComponent];
    NSLog(@"%@", newPathContent);
    
    // 3.删除文件路径中的最后一个目录
    // 本质就是删除最后一个/后面的内容, 包括/也会被删除
    NSString *newPathDelete = [stringPath stringByDeletingLastPathComponent];
    NSLog(@"%@", newPathDelete);
    
    // 4.给文件路径添加一个目录
    // 本质就是在字符串的末尾加上一个/ 和指定的内容
    // 注意: 如果路径后面已经有了/, 那么就不会添加了
    //      如果路径后面有多个/, 那么会自动删除多余的/, 只保留一个
    NSString *newPathAdd = [stringPath stringByAppendingPathComponent:@"xmg"];
    NSLog(@"%@", newPathAdd);
    
    
    // 5.获取路径中文件的扩展名
    // 本质就是从字符串的末尾开始查找., 截取第一个.后面的内容
    NSString *newPathExtension = [stringPath pathExtension];
    NSLog(@"%@", newPathExtension);
    
    // 6.删除路径中文件的扩展名
    // 本质就是从字符串的末尾开始查找.,删除第一个.和.后面的内容
    NSString *newPathDeleteExtension = [stringPath stringByDeletingPathExtension];
    NSLog(@"newPathDeleteExtension: %@", newPathDeleteExtension);
    
    
    // 7.给文件路径添加一个扩展名
    // 本质就是在字符串的末尾加上一个.和指定的内容
    NSString *newPathAddExtension = [stringPath stringByAppendingPathExtension:@"jpg"];
    NSLog(@"newPathAddExtension: %@", newPathAddExtension);
    
    
    NSLog(@"-------------string path------------");
    
    
    
    
    
    NSLog(@"-------------string convert------------");
    NSString *stringConvert = @"abcDEF tom";
    // 1.将字符串转换为大写
    NSString *stringConvertUpper = [stringConvert uppercaseString];
    NSLog(@"%@", stringConvertUpper);
    
    // 2.将字符串转换为小写
    NSString *stringConvertLower = [stringConvert lowercaseString];
    NSLog(@"%@", stringConvertLower);
    
    // 3.将字符串的首字符转换为大写
    NSString *stringCapitalized = [stringConvert capitalizedString];
    NSLog(@"%@", stringCapitalized);
    
    // 4.字符串与基本数据类型的转换
    NSString *stringInteger = @"110";
    int value1 = [stringInteger intValue];
    NSLog(@"%i", value1 );
    
    
    
    // 5.C语言字符串和OC字符串之间的转换
    char *cStr = "lnj中文";
    NSString *stringFromC = [NSString stringWithUTF8String:cStr];
    NSLog(@"cstr=%s",cStr);
    NSLog(@"str = %@", stringFromC);
    
    NSString *stringToC = @"lmj中文";
    const char *cStr2 = [stringToC UTF8String];
    NSLog(@"cStr2 = %s", cStr2);

    NSLog(@"-------------string convert------------");
    
    
    
    return 0;
}
