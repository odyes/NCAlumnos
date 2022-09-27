//
//  ViewController.swift
//  NavControllerAlumno
//
//  Created by Alumno on 9/22/22.
//  Copyright © 2022 ulsa. All rights reserved.
//

import UIKit

class AlumnosController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tvAlumno: UITableView!
    
    var alumnos : [Alumno] = []
    var materias1: [Materia] = []
    var materias2: [Materia] = []
    var materias3: [Materia] = []
    
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! DetallesAlumnosController
        destino.alumno = alumnos[tvAlumno.indexPathForSelectedRow!.row]
    }
    
    
    ////////////////////////////////////
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        materias1.append(Materia(nombre: "Fotografìa", codigo: "FOT2"))
        materias1.append(Materia(nombre: "Comunicaciòn", codigo: "COM1"))
        
        materias2.append(Materia(nombre: "Programaciòn", codigo: "PROGRA3"))
        materias2.append(Materia(nombre: "Mètodos nùmericos", codigo: "METNUM1"))
        
        materias3.append(Materia(nombre: "Fìsica", codigo: "FIS2"))
        materias3.append(Materia(nombre: "Dibujo", codigo: "DIB2"))
      
        ///
        alumnos.append(Alumno(nombre: "Alejandra Esquer", carrera: "IPM", matricula: "209004", edad: 20, materias: materias1))
        alumnos.append(Alumno(nombre: "Alejandra Esquer", carrera: "IPM", matricula: "209004", edad: 20, materias: materias2))
        alumnos.append(Alumno(nombre: "Alejandra Esquer", carrera: "IPM", matricula: "209004", edad: 20, materias: materias3 ))
        
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

