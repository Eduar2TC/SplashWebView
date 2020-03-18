//
//  webView.swift
//  SplashWebView
//
//  Created by Edu on 17/03/20.
//  Copyright © 2020 Edu. All rights reserved.
//

import UIKit

class webView: UIViewController {
    public var archiveName: String?;
    @IBOutlet var webView: UIWebView!
    
    func mostrarPDF(){
        if let pdf = Bundle.main.url(forResource: self.archiveName, withExtension: "pdf", subdirectory: nil, localization: nil){
            let req = NSURLRequest(url: pdf)
            webView.loadRequest(req as URLRequest);
        }
    }
    func habilitarZoom(){
        webView.scalesPageToFit = true;
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //calling functions
        mostrarPDF();
        habilitarZoom();
        print("\(self.archiveName!)");
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
