/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;



import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;
import model.UsuarioModel;
import util.GerarTXT;

/**
 *
 * @author Felipe
 */
public class UsuarioDAO {

        public ArrayList<UsuarioModel> ListaUsuarios(String Criterio) {
        ArrayList<UsuarioModel> lista = new ArrayList<UsuarioModel>();

        Scanner in = null;

        try {

          in = new Scanner(new FileReader("nomes.txt"));
        } catch (FileNotFoundException ex) {

        }

        while (in.hasNextLine()) {

            String line = in.nextLine();
            
            UsuarioModel ModelUsuario = new UsuarioModel();
            
            ModelUsuario.setUsuario(line);
      
            if(Criterio == null || Criterio.equals(""))
            {
            lista.add(ModelUsuario);
            
            }
            
            if(Criterio == null ? line == null : Criterio.equals(line))
            {
            lista.add(ModelUsuario);
              
            }
            
        }
        
        return lista;
    }

    public void GravarUsuario(UsuarioModel usuario) {

        GerarTXT gerarTXT = new GerarTXT();
        
        gerarTXT.AddUsuario(usuario.getUsuario());
        
    }

}
