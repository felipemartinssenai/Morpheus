/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Felipe
 */
public class UsuarioModel {

    private   String Usuario;
    
    
    public  String getUsuario() {
        return Usuario;
    }

    public  void setUsuario(String Usuario) {
        this.Usuario = Usuario;
    }
    
     /**
     * @param Criterio
     * @return the listaModelCidadeEstados
     */
    public ArrayList<UsuarioModel> getListaModelUsuarios(String Criterio) {
        return new DAO.UsuarioDAO().ListaUsuarios(Criterio);
    }
    
    @Override
    public String toString(){
        return  this.Usuario ;
    }
   
}
