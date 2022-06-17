// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
 
contract Estudiante{

    string private _nombre;
    string private _apellido;
    string private _curso;
    address private _docente;
    mapping(string => uint) private notas_materias; 
    string[] private materias;
    mapping(string => uint)[5] private bimestres;
   
 

 constructor(string memory nombre_, string memory apellido_, string memory curso_){
        _nombre = nombre_;
        _apellido = apellido_;
        _curso = curso_;
        _docente = msg.sender;
 }
function apellido() public view returns (string memory){
        return _apellido;
}
 

 
function nombre_completo() public view returns (string memory){
        return _nombre;
        //return _apellido;
}
 

function curso() public view returns (string memory){
        return _curso;
}
 

 
function set_nota_materia(string memory materia, uint nota) public{
        require(msg.sender == _docente, "Solo el docente registrado puede asignar las notas");
        //bimestres[bimestre] = num;
        //bimestres.push(bimestre);
        notas_materias[materia]= nota;
        materias.push(materia);
//Intento de Bimestres:
        //bimestres[bimestres-1][materia] = nota;
        //materia[bimestres].push(materia);
    }
 

function nota_materia(string memory materia) public view returns (uint){
       return notas_materias[materia];
       // return bimestres[bimestres-1][materia];
}
 

function aprobo (string memory materia) public view returns (bool){
    bool _aprobado;
   
    if  (notas_materias[materia]>=60) {
        _aprobado = true;
    }
    else{
        _aprobado = false;
    }
    return _aprobado;
}
 

function promedio() public view returns (uint){
    uint MateriasPromedio;
    for (uint i=0; i<materias.length; i++){
        MateriasPromedio += notas_materias[materias[i]];
    }
    return MateriasPromedio/materias.length;
 
}
}
 
