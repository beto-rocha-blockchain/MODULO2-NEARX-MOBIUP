// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.27;

import "./Professor.sol";

contract HoraCerta {

    mapping(address => Professor) public professores;

    event ProfessorRegistrado(address, Professor);

    error HoraNaoValida();

    function registrarProfessor(address _profAddress, Professor memory _profesor) public {
        professores[_profAddress] = _professor;
        emit ProfessorRegistrado(_profAddress, _professor)
    }

    function mudarNomeProfessor(address _profAddress, int _horas) public {
        professores[_profAddress].nome = _nome;
    }

    function registrarHora(address _profAddress, int _horas) public {
        if (_horas < 0) {
            revert HoraNaoValida();
        }

        professores[_profAddress].horasTrabalhadas += _horas;
    }

}
