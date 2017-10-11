/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

import model.UsuarioModel;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;

/**
 *
 * @author Felipe
 */
public class GerarTXT {

    public void AddUsuario(String Usuario) {
        try {

            // Cria arquivo
            File file = new File("nomes.txt");

            //Quebra de linha
            String Break = "\r\n";

            // Se o arquivo nao existir, ele gera
            System.out.print(file);

            if (!file.exists()) {
                file.createNewFile();

            }

            // Prepara para escrever no arquivo
            FileWriter fw = new FileWriter(file.getAbsoluteFile(), true);
            BufferedWriter bw = new BufferedWriter(fw);

            // Escreve e fecha arquivo
            bw.write(new util.TiraAcentos().Execute(Usuario)+ Break);
            bw.close();
            
            new model.ModelMensagens().setRetSalvar("Usuario salvo com sucesso!");

        } catch (Exception ex) {
            System.out.print(ex);
            new model.ModelMensagens().setRetSalvar("Ocorreu um erro ao salvar usuário - Erro =" + ex);
        }
    }
}
