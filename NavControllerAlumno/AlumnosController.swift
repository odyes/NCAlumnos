//
//  ViewController.swift
//  NavControllerAlumno
//
//  Created by Alumno on 9/22/22.
//  Copyright © 2022 ulsa. All rights reserved.
//

import UIKit

class AlumnosController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var alumnos : [alumno] = []
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 71
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return alumnos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaAlumno") as? CeldaAlumnoController
        celda?.lblNombre.text = alumnos[indexPath.row].nombre
        celda?.lblCarrera.text = alumnos[indexPath.row].carrera
        celda?.lblMatricula.text = alumnos[indexPath.row].matricula
        return celda!
    }
    
    
    
    ////////////////////////////////////
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.title = "Alumnos"
        
        alumnos.append(alumno(nombre: "Alejandra Esquer", carrera: "IPM", matricula: "209004" ))
        alumnos.append(alumno(nombre: "Alejandra Esquer", carrera: "IPM", matricula: "209004" ))
        alumnos.append(alumno(nombre: "Alejandra Esquer", carrera: "IPM", matricula: "209004" ))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

