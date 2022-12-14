//
//  Constants.swift
//  DigitalCountry
//
//  Created by 倪尛 on 2022/9/7.
//

import Foundation
import UIKit


struct ScreenSize{
    static let width = UIScreen.main.bounds.width
    static let height = UIScreen.main.bounds.height
}

enum NetworkError: Int {
    case HttpResquestFailed = -1000,UrlResourceFailed = -2000
}
let NetworkDomain:String = "com.start.NetworkDomain"

func RGBA(r:CGFloat, g:CGFloat, b:CGFloat, a:CGFloat) ->UIColor {
    return UIColor.init(red: r / 255.0, green: g / 255.0, blue: b / 255.0, alpha: a)
}
let ColorWhiteAlpha10:UIColor = RGBA(r:255.0, g:255.0, b:255.0, a:0.1)
let ColorWhiteAlpha20:UIColor = RGBA(r:255.0, g:255.0, b:255.0, a:0.2)
let ColorWhiteAlpha40:UIColor = RGBA(r:255.0, g:255.0, b:255.0, a:0.4)
let ColorWhiteAlpha60:UIColor = RGBA(r:255.0, g:255.0, b:255.0, a:0.6)
let ColorWhiteAlpha80:UIColor = RGBA(r:255.0, g:255.0, b:255.0, a:0.8)

let screenWidth = UIScreen.main.bounds.size.width
let screenHeight = UIScreen.main.bounds.size.height
let statusBarHeight = UIApplication.shared.statusBarFrame.height
let safeAreaTopHeight:CGFloat = (ScreenSize.height >= 812.0 && UIDevice.current.model == "iPhone" ? 88 : 64)
let safeAreaBottomHeight:CGFloat = (ScreenSize.height >= 812.0 && UIDevice.current.model == "iPhone"  ? 30 : 0)

let ColorClear: UIColor = UIColor.clear
let ColorBlack:UIColor = UIColor.black
let ColorWhite:UIColor = UIColor.white
let ColorGray:UIColor =  UIColor.gray
let ColorBlue:UIColor = RGBA(r:40.0, g:120.0, b:255.0, a:1.0)
let ColorGrayLight:UIColor = RGBA(r:40.0, g:40.0, b:40.0, a:1.0)
let ColorGrayDark:UIColor = RGBA(r:25.0, g:25.0, b:35.0, a:1.0)
let ColorSmoke:UIColor = RGBA(r:230.0, g:230.0, b:230.0, a:1.0)
let ColorThemeGrayLight:UIColor = RGBA(r:104.0, g:106.0, b:120.0, a:1.0)
let ColorThemeGray:UIColor = RGBA(r:92.0, g:93.0, b:102.0, a:1.0)
let ColorThemeGrayDark:UIColor = RGBA(r:20.0, g:21.0, b:30.0, a:1.0)
let ColorThemeYellow:UIColor = RGBA(r:250.0, g:206.0, b:21.0, a:1.0)
let ColorThemeYellowDark:UIColor = RGBA(r:235.0, g:181.0, b:37.0, a:1.0)
let ColorThemeBackground:UIColor = RGBA(r:14.0, g:15.0, b:26.0, a:1.0)
let ColorThemeRed:UIColor = RGBA(r:241.0, g:47.0, b:84.0, a:1.0)


//Font
let SuperSmallFont:UIFont = UIFont.systemFont(ofSize: 10.0)
let SuperSmallBoldFont:UIFont = UIFont.systemFont(ofSize: 10.0)

let SmallFont:UIFont = UIFont.systemFont(ofSize: 12.0)
let SmallBoldFont:UIFont = UIFont.systemFont(ofSize: 12.0)

let MediumFont:UIFont = UIFont.systemFont(ofSize: 14.0)
let MediumBoldFont:UIFont = UIFont.systemFont(ofSize: 14.0)

let BigFont:UIFont = UIFont.systemFont(ofSize: 16.0)
let BigBoldFont:UIFont = UIFont.systemFont(ofSize: 16.0)

let LargeFont:UIFont = UIFont.systemFont(ofSize: 18.0)
let LargeBoldFont:UIFont = UIFont.systemFont(ofSize: 18.0)

let SuperBigFont:UIFont = UIFont.systemFont(ofSize: 26.0)
let SuperBigBoldFont:UIFont = UIFont.systemFont(ofSize: 26.0)

//enum
enum LoadingType: Int {
    case LoadStateIdle
    case LoadStateLoading
    case LoadStateAll
    case LoadStateFailed
}

//请求地址
let BaseUrl:String = "http://116.62.9.17:8080/douyin/"
//创建访客用户接口
let CREATE_VISITOR_BY_UDID_URL:String = "visitor/create"

//根据用户id获取用户信息
let FIND_USER_BY_UID_URL:String = "user"

//获取用户发布的短视频列表数据
let FIND_AWEME_POST_BY_PAGE_URL:String = "aweme/post"
//获取用户喜欢的短视频列表数据
let FIND_AWEME_FAVORITE_BY_PAGE_URL:String = "aweme/favorite"

//发送文本类型群聊消息
let POST_GROUP_CHAT_TEXT_URL:String = "groupchat/text"
//发送单张图片类型群聊消息
let POST_GROUP_CHAT_IMAGE_URL:String = "groupchat/image"
//发送多张图片类型群聊消息
let POST_GROUP_CHAT_IMAGES_URL:String = "groupchat/images"
//根据id获取指定图片
let FIND_GROUP_CHAT_BY_IMAGE_ID_URL:String = "groupchat/image"
//获取群聊列表数据
let FIND_GROUP_CHAT_BY_PAGE_URL:String = "groupchat/list"
//根据id删除指定群聊消息
let DELETE_GROUP_CHAT_BY_ID_URL:String = "groupchat/delete"

//根据视频id发送评论
let POST_COMMENT_URL:String = "comment/post"
//根据id删除评论
let DELETE_COMMENT_BY_ID_URL:String = "comment/delete"
//获取评论列表
let FIND_COMMENT_BY_PAGE_URL:String = "comment/list"
