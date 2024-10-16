// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import "./Professor.sol";

contract HoraCerta {

    mapping(address => Professor) public professores;

    event ProfessorRegistrado(address profAddress, Professor professor);

    error HoraNaoValida();

    function registrarProfessor(address _profAddress, Professor memory _professor) public {
        professores[_profAddress] = _professor;
        emit ProfessorRegistrado(_profAddress, _professor);
    }

    function mudarNomeProfessor(address _profAddress, string memory _nome) public {
        professores[_profAddress].nome = _nome;
    }

    function registrarHora(address _profAddress, uint _horas) public {
        // Não precisa verificar se _horas é negativo, pois é um uint
        professores[_profAddress].horasTrabalhadas += _horas;
    }

}