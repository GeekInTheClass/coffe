//
//  DetailViewController.swift
//  asdfghj
//
//  Created by YeongSoo Kim on 19/04/2019.
//  Copyright © 2019 BONG. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    // 테이블 뷰에서 값 받아올 임시 변수
    @IBOutlet weak var asdf: UILabel!
    var utsaram: Coffee?
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    override func viewWillAppear(_ animated: Bool) {
        asdf.text = String(utsaram!.cost)
        print(utsaram?.cost)
    }
}
