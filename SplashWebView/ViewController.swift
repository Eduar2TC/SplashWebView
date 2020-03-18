//
//  ViewController.swift
//  SplashWebView
//
//  Created by Edu on 17/03/20.
//  Copyright © 2020 Edu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    private var arreglo: [String] = [String]();
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arreglo.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myTableCell", for: indexPath);
        cell.textLabel!.text = self.arreglo[indexPath.row];
        cell.imageView!.image = UIImage(named: "pdf-icon.png")
        return cell;
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    /*---*/
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let pdfSeleccionado = indexPath.row;
        self.performSegue(withIdentifier: "webViewPdf", sender: pdfSeleccionado)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let seleccion = sender as! Int;
        let webViewObjeto: webView = segue.destination as! webView;
        webViewObjeto.archiveName = self.arreglo[seleccion];
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.arreglo = ["Práctica 7", "Práctica 8", "Práctica 9"];
    }


}

