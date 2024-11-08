//
//  MainViewController.swift
//  ITy
//
//  Created by 천성우 on 9/3/24.
//

import UIKit

import Then
import SnapKit
import RxSwift
import RxCocoa

final class MainViewController: BaseViewController {
    
    
    private let viewModel = HomeViewModel()
    private let disposeBag = DisposeBag()
    
    // MARK: - UI Components
    
    private let segmentedView = MainSegmentedView()
    private let homeViewController: HomeViewController
    private let rankViewController: RankViewController
    private lazy var viewControllers: [UIViewController] = [homeViewController, rankViewController]
    private let pageViewController = UIPageViewController(transitionStyle: .scroll, navigationOrientation: .horizontal)
    private var currentPage: UIViewController!
    
    override var isNavigationBarHidden: Bool { true }

    // MARK: - Initializer
    
    override init(nibName: String?, bundle: Bundle?) {
        homeViewController = HomeViewController(viewModel: viewModel)
        rankViewController = RankViewController(viewModel: viewModel)

        super.init(nibName: nibName, bundle: bundle)
    }
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setPage()
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    // MARK: - Properties
    
    override func bindViewModel() {
        segmentedView.noticeButton.rx.tap
            .bind { [weak self] in
                guard let self else { return }
                self.viewModel.inputs.didTapNoticeButton()
            }
            .disposed(by: disposeBag)
        
        viewModel.outputs.pushPage
            .bind(onNext: { [weak self] switchPage in
                if switchPage {
                    self?.pushToNoticeViewController()
                }
            })
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
    
    
    private func setPage() {
        if let firstViewController = viewControllers.first {
            pageViewController.setViewControllers([firstViewController], direction: .forward, animated: false)
            currentPage = firstViewController
        }
    }
    
    @objc
    private func pushToNoticeViewController() {
        let pushVC = NoticeViewController(viewModel: viewModel)
        pushVC.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(pushVC, animated: true)
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


extension MainViewController: MainViewSegmentDelegate {
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

