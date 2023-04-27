//
//  OnboardingViewController.swift
//  Yummie
//
//  Created by Mina on 19/03/2023.
//

import UIKit

class OnboardingViewController: UIViewController {
    @IBOutlet weak var CollectioView: UICollectionView!
    @IBOutlet weak var NextBtn: UIButton!
    @IBOutlet weak var PageController: UIPageControl!
    var slides :[OnboardingSlide] = []
    var currenPage = 0 {
        didSet {
            PageController.currentPage = currenPage
            if currenPage == slides.count - 1 {
                NextBtn.setTitle("Get Started", for: .normal)
            } else {
                NextBtn.setTitle("Next", for: .normal)
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        CollectioView.delegate = self
        CollectioView.dataSource = self
        slides = [OnboardingSlide(title: "Delicious Dishes", description: "Experience a variety of amazing dishes from diiferent cultures around the world.", image: UIImage(named: "2")!),
                  OnboardingSlide(title: "World-class Chefs", description: "Our dishes are prepared by only the best.", image: UIImage(named: "3")!),OnboardingSlide(title: "Instant World-Wide Delivery", description: "Your orders will be delivered instantly irrespective of your location around the world.", image: UIImage(named: "4")!)]
    }
    

    @IBAction func nextBtnClicked(_ sender: Any) {
        if currenPage == slides.count - 1 {
            let controller = storyboard?.instantiateViewController(withIdentifier: "homeVC") as! UINavigationController
            controller.modalPresentationStyle = .fullScreen
            controller.modalTransitionStyle = .flipHorizontal
            UserDefaults.standard.hasOnboarded = true
            present(controller, animated: true)
        }else {
            currenPage+=1
            let indexPath = IndexPath(item: currenPage, section: 0)
            CollectioView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
        }
       
        
        
    }
}
extension OnboardingViewController : UICollectionViewDelegate , UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return slides.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "OnboardingCollectionViewCell", for: indexPath) as! OnboardingCollectionViewCell
        
        cell.config(slides[indexPath.row])
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let width = scrollView.frame.width
        currenPage = Int(scrollView.contentOffset.x / width)
        
    }
    
}
