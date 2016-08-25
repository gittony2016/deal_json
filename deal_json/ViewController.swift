//
//  ViewController.swift
//  deal_json
//
//  Created by Zhuwei Cao on 16/3/16.
//  Copyright © 2016年 Dev Pty Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func deal_Json() {
        do {
            let url = NSURL(string:"https://api.uber.com/v1/products")
            //获取JSON数据
            let data = try NSData(contentsOfURL: url!,options:NSDataReadingOptions.DataReadingUncached)
            let json:AnyObject = try NSJSONSerialization.JSONObjectWithData(data,options:NSJSONReadingOptions.AllowFragments)
            
            //解析获取JSON字段值
            let weatherInfo:AnyObject = json.objectForKey("weatherinfo")! //json结构字段名。
            let city:AnyObject = weatherInfo.objectForKey("city")!
            //以此类推获取其他字段的信息,再此我就不过多赘述了。
            
            //然后把获取到的json值赋值个相应的控件即可。
            //lb.text = "城市:\(city)" //使用\()可以将变量嵌入到相应的字符串
        } catch {
            //lb.text = "Unavailable to collect data!"
        }
    }


}

