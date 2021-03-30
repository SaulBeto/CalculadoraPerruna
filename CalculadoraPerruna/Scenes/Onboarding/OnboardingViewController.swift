//
//  OnboardingViewController.swift
//  CalculadoraPerruna
//
//  Created by Saul Alberto Cortez Garcia on 25/03/21.
//

import UIKit

class OnboardingViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var skipOnboardingButton: UIButton!
    
    var coordinator: OnboardingCoordinator?
    var scrollWidth: CGFloat! = 0.0
    var scrollHeight: CGFloat! = 0.0
    var titles = [LocalizableKeys.Onboarding.firstScreenTitle, LocalizableKeys.Onboarding.secondScreenTitle]
    var descs = [LocalizableKeys.Onboarding.firstScreenDesc, LocalizableKeys.Onboarding.secondScreenDesc]
    var imgs = ["PerroHumano","hands"]
    
    deinit {
        print("denit \(self)")
    }
    
    override func viewDidLayoutSubviews() {
        scrollWidth = scrollView.frame.size.width
        scrollHeight = scrollView.frame.size.height
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.layoutIfNeeded()
        
        setupView()
        scrollView.delegate = self
        scrollView.isPagingEnabled = true
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.showsVerticalScrollIndicator = false
        scrollView.contentSize = CGSize(width: scrollWidth * CGFloat(titles.count), height: scrollHeight)
        scrollView.contentSize.height = 1.0
        
        pageControl.numberOfPages = titles.count
        pageControl.currentPage = 0
        
        skipOnboardingButton.layer.cornerRadius = 5
        skipOnboardingButton.setTitle(LocalizableKeys.Onboarding.skip, for: .normal)
    }
    
    private func setupView() {
        
        var frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        
        (0..<titles.count).forEach { index in
            
            frame.origin.x = scrollWidth * CGFloat(index)
            frame.size = CGSize(width: scrollWidth, height: scrollHeight)
            
            let slide = UIView(frame: frame)
            
            let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 300, height: 300))
            imageView.image = UIImage(named: imgs[index])
            
            imageView.contentMode = .scaleAspectFit
            imageView.center = CGPoint(x:scrollWidth/2,y: scrollHeight/2 - 50)
            imageView.image = imageView.image?.withRenderingMode(.alwaysTemplate)

            if traitCollection.userInterfaceStyle == .dark {
                imageView.tintColor = .white
            } else {
                imageView.tintColor = .black
            }
            
            let txt1 = UILabel(frame: CGRect(x: 32, y: imageView.frame.maxY + 30, width: scrollWidth - 64, height: 60))
            txt1.textAlignment = .center
            txt1.numberOfLines = 2
            txt1.font = UIFont.boldSystemFont(ofSize: 20.0)
            txt1.text = titles[index]
            
            let txt2 = UILabel(frame: CGRect(x: 32, y: txt1.frame.maxY + 10, width: scrollWidth - 64, height: 50))
            txt2.textAlignment = .center
            txt2.numberOfLines = 3
            txt2.font = UIFont.systemFont(ofSize: 16.0)
            txt2.text = descs[index]
            
            slide.addSubview(imageView)
            slide.addSubview(txt1)
            slide.addSubview(txt2)
            scrollView.addSubview(slide)
            
        }
    }
    
    @IBAction func skipButtonTapped(_ sender: Any) {
        coordinator?.goToHome()
        UserDefaults.standard.set(true, forKey: "isAlreadyOnboarding")
    }
    
}

extension OnboardingViewController: UIScrollViewDelegate {
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        setIndiactorForCurrentPage()
    }
    
    private func setIndiactorForCurrentPage()  {
        let page = Int(scrollView.contentOffset.x / scrollWidth)
        pageControl.currentPage = page
        
        skipOnboardingButton.setTitle(page == 0 ? LocalizableKeys.Onboarding.skip
                                                : LocalizableKeys.Onboarding.start,
                                      for: .normal)
    }
    
}
