//
//  ComputerscienceViewController.swift
//  ITy
//
//  Created by 천성우 on 10/25/24.
//

import UIKit

import Then
import SnapKit
import RxSwift
import RxCocoa

final class ComputerscienceViewController: BaseViewController {
    
    
    private let viewModel = ComputerscienceViewModel()
    private let disposeBag = DisposeBag()
    
    // MARK: - UI Components
    
    private let segmentedView = ComputerscienceSegmantedView()
    private let topicViewController: ComputerscienceTopicViewController
    private let answerViewController: ComputerscienceAnswerViewController
    private lazy var viewControllers: [UIViewController] = [topicViewController, answerViewController]
    private let pageViewController = UIPageViewController(transitionStyle: .scroll, navigationOrientation: .horizontal)
    private var currentPage: UIViewController!

    
    // MARK: - Properties
    
    // MARK: - Initializer
    
    override init(nibName: String?, bundle: Bundle?) {
        topicViewController = ComputerscienceTopicViewController(viewModel: viewModel)
        answerViewController = ComputerscienceAnswerViewController(viewModel: viewModel)

        super.init(nibName: nibName, bundle: bundle)

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setPage()
        setNotification()
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }

    
    override func bindViewModel() {
        segmentedView.noticeButton.rx.tap
            .bind { [weak self] in
                guard let self else { return }
                self.pushToNoticeViewController()
            }
            .disposed(by: disposeBag)
    }
    
    override func setStyles() {
        view.backgroundColor = .gray10
        
        pageViewController.do {
            $0.didMove(toParent: self)
        }
        
        viewControllers.do {
            $0[0].navigationController?.setNavigationBarHidden(true, animated: false)
            $0[1].navigationController?.setNavigationBarHidden(true, animated: false)
        }
    }
    
    override func setLayout() {
        self.addChild(pageViewController)
        view.addSubviews(segmentedView, pageViewController.view)
        
        segmentedView.snp.makeConstraints {
            $0.horizontalEdges.equalToSuperview()
            $0.height.equalTo(51)
            $0.top.equalToSuperview().offset(SizeLiterals.Screen.screenHeight * 70 / 812)
        }
        
        pageViewController.view.snp.makeConstraints {
            $0.top.equalTo(segmentedView.snp.bottom)
            $0.horizontalEdges.equalToSuperview()
            $0.bottom.equalToSuperview().offset(SizeLiterals.Screen.screenHeight * 144 / 812)
        }
    }
    
    override func setDelegates() {
        segmentedView.delegate = self
    }
    
    private func setNotification() {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    
    private func setPage() {
        if let firstViewController = viewControllers.first {
            pageViewController.setViewControllers([firstViewController], direction: .forward, animated: false)
            currentPage = firstViewController
        }
    }
    
    @objc private func keyboardWillShow(_ notification: Notification) {
        if let animationDuration = notification.userInfo?[UIResponder.keyboardAnimationDurationUserInfoKey] as? Double {
            
            let desiredOffset: CGFloat = SizeLiterals.Screen.screenHeight * 250 / 812
            
            UIView.animate(withDuration: animationDuration) {
                self.view.frame.origin.y = -desiredOffset
            }
        }
    }

    @objc private func keyboardWillHide(_ notification: Notification) {
        if let animationDuration = notification.userInfo?[UIResponder.keyboardAnimationDurationUserInfoKey] as? Double {
            UIView.animate(withDuration: animationDuration) {
                self.view.frame.origin.y = 0
            }
        }
    }
    
    @objc
    private func pushToNoticeViewController() {
        let pushVC = NoticeViewController(viewModel: viewModel)
        pushVC.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(pushVC, animated: true)
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }

    
    
    deinit {
          NotificationCenter.default.removeObserver(self)
      }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension ComputerscienceViewController: ComputerscienceViewSegmentDelegate {
    func movePage(to index: Int) {
        switch index {
        case 0:
            switchPage(difference: 1)
        case 1:
            switchPage(difference: -1)
        default:
            break
        }
    }
    
    private func switchPage(difference: Int) {
        guard let page = viewControllers.firstIndex(of: currentPage) else { return }
        switch difference {
        case 1:
            pageViewController.setViewControllers([viewControllers[page + difference]], direction: .forward, animated: true)
        case -1:
            pageViewController.setViewControllers([viewControllers[page + difference]], direction: .reverse, animated: true)
        default:
            break
        }
        currentPage = viewControllers[page + difference]
    }
}
