//
//  PlayerShowInfoView.swift
//  LKLiveTool
//
//  Created by Hector on 16/9/2.
//  Copyright © 2016年 LK. All rights reserved.
//

import UIKit

class PlayerShowInfoView: UIScrollView {
    
    private  lazy var infoPlayerView: UIView = {
        let infoPlayerView = NSBundle.mainBundle().loadNibNamed("InfoPlayerShowView", owner: self, options: nil)[0]as!UIView
        infoPlayerView.frame = CGRectMake(screenWidth, 0, screenWidth, screenHeight)

        return infoPlayerView
    }()
    
    convenience init() {
        self.init(frame: UIScreen.mainScreen().bounds)
    }

    override init(frame: CGRect) {
        super.init(frame: CGRectMake(0, 0, screenWidth, screenHeight))
        showsVerticalScrollIndicator = false
        showsHorizontalScrollIndicator = false
        contentSize = CGSizeMake(screenWidth * 2, screenHeight)
        bounces = false
        delegate = self
        pagingEnabled = true
        infoPlayerView.backgroundColor = UIColor(colorLiteralRed: 236, green: 236, blue: 236, alpha: 0)
        
        setContentOffset(CGPointMake(screenWidth, 0), animated: true)
        
        addSubview(infoPlayerView)
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    

}







extension PlayerShowInfoView : UIScrollViewDelegate{
    
    func scrollViewWillBeginDragging(scrollView: UIScrollView){
    
    }
    
    func scrollViewWillEndDragging(scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>){
        
    }
    
    func scrollViewDidEndDragging(scrollView: UIScrollView, willDecelerate decelerate: Bool){

    }

}
