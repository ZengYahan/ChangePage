//
//  ViewController.swift
//  ChangePage
//
//  Created by YaHan on 2024/4/16.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var playerNameLabel: UILabel!
    @IBOutlet weak var introductionText: UITextView!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var playerPageControl: UIPageControl!
    @IBOutlet weak var playerImageView: UIImageView!
    

    let playerArray = ["StephenCurry", "LeBronJames", "KevinDurant", "NikolaJokic", "LukaDoncic"]
    let introductionArray = ["名稱：Wardell Stephen Curry II\n\n生日：1988年3月14日（36歲）\n\n身高/ 體重：191公分/ 84公斤\n\n國籍：美國\n\n效力球隊：Warriors(金州勇士)",   "名稱：LeBron Raymone James Sr\n\n生日：1984年12月30日（39歲）\n\n身高/ 體重：206公分/ 113公斤\n\n國籍：美國\n\n效力球隊：Lakers(洛杉磯湖人)", "名稱：Kevin Wayne Durant\n\n生日：1988年9月29日（35歲）\n\n身高/ 體重：211公分/ 109公斤\n\n國籍：美國\n\n效力球隊：Suns(鳳凰城太陽)", "名稱：Никола Јокић\n\n生日：1995年2月19日（29歲）\n\n身高/ 體重：211公分/ 129公斤\n\n國籍：塞爾維亞\n\n效力球隊：Nuggets(丹佛金塊)", "名稱：Luka Dončić\n\n生日：1999年2月28日（25歲）\n\n身高/ 體重：201公分/ 104公斤\n\n國籍：斯洛維尼亞\n\n效力球隊：Mavericks(達拉斯獨行俠)"]
    let nameLabelArray = ["Stephen Curry", "LeBron James", "Kevin Durant", "Nikola Jokic", "Luka Doncic"]
    
    var index = 0
    
    func playerChange() {
        playerImageView.image = UIImage(named: playerArray[index])
        playerNameLabel.text = nameLabelArray[index]
        introductionText.text = introductionArray[index]
        playerPageControl.currentPage = index
        segmentedControl.selectedSegmentIndex = index
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        playerImageView.image = UIImage(named: playerArray[0])
        playerNameLabel.text = nameLabelArray[0]
        introductionText.text = introductionArray[0]
        
        
    }

    @IBAction func next(_ sender: Any) {
        index = (index + 1) % playerArray.count
        playerChange()
    }
    
    @IBAction func back(_ sender: Any) {
        index = (index + playerArray.count - 1) % playerArray.count
        playerChange()
    }
    
    @IBAction func pageControl(_ sender: Any) {
        index = playerPageControl.currentPage
        playerChange()
    }
    
    
    @IBAction func segmentedControlSwith(_ sender: Any) {
        index = segmentedControl.selectedSegmentIndex
        playerChange()
    }
    
    @IBAction func rightSwipe(_ sender: Any) {
        index = (index + playerArray.count - 1) % playerArray.count
        playerChange()
    }
    
    @IBAction func leftSwipe(_ sender: Any) {
        index = (index + 1) % playerArray.count
        playerChange()
    }
    
}

