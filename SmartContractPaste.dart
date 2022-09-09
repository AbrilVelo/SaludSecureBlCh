// SPDX-License-Identifier: MIT
// pragma solidity ^0.8.10;
 
// contract Estudiante{

//     string private _nombre;
//     string private _DNI; 
//     string private _Credencial; 
//     address private _medico;
//     string private _apellido;
//     string private _medicamento;
//     uint256 private _tiempoMandado;
//     string private _aclaracion;
//     mapping(string => uint) private _cantidadMedicamentos;
 

//     constructor(string memory nombre_, string memory apellido_, string memory DNI_, string memory Credencial_){
//         _medico = msg.sender;
//         _Credencial = Credencial_;
//         _DNI = DNI_;
//         string memory nom = string(abi.encodePacked(nombre_));
//         _nombre = nom;
//         _apellido = apellido_;
//     }
    
//      function set_CantidadMedicamentos(string memory medicamento, uint cantidad, string memory aclaracion) public{
//          require(msg.sender == _medico, "Solo el medico puede asignar medicamentos");
//          _aclaracion = aclaracion;
//          _cantidadMedicamentos[medicamento] = cantidad;
//          _medicamento = medicamento;
//         _tiempoMandado = block.timestamp;
//      }

     
//     event Transfer(address _medico, address paciente, uint cantidadMedicamentos, string aclaracion, uint256 timestamp, string keyword);
 
//     function concatenate() public view returns (string memory) {

//     return string(bytes.concat(bytes(_apellido),'  \nNombre:  ', bytes(_nombre), ' Credencial: ', bytes(_Credencial),'  DNI: ',bytes(_DNI) ,'  Medicamento: ', bytes(_medicamento),' Aclaracion: ', bytes(_aclaracion),' '));

// }


   
//  }