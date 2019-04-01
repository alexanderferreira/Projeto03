/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.cadastro;
import java.util.ArrayList;
/**
 *
 * @author alexandersantos
 */
public class Bd {
    public static ArrayList<Clientes> clientes;
    public static ArrayList<Clientes> getCliente(){
        if(clientes==null){
            
            clientes = new ArrayList<>();
            Clientes c1 = new Clientes();
            c1.setNomecliente("Roberto Carlos");
            c1.setCpf("111.222.333-44");
            c1.setRg("11.222.333-4");
            c1.setEmailcliente("cliente@empresa.com");
            c1.setTelefonecliente("+55 13 99111-1111");
            c1.setEnderecocliente("rua sem nome");
            clientes.add(c1);
            
            Clientes c2 = new Clientes();
            c2.setNomecliente("Roberto Carlos");
            c2.setCpf("111.222.333-44");
            c2.setRg("11.222.333-4");
            c2.setEmailcliente("cliente@empresa.com");
            c2.setTelefonecliente("+55 13 99111-1111");
            c2.setEnderecocliente("rua sem nome");
            clientes.add(c2);
        }
        return clientes;
    }
    
    public static ArrayList<Fornecedores> fornecedores;   
    public static ArrayList<Fornecedores> getFornecedores(){
        if(fornecedores==null){
            
            fornecedores = new ArrayList<>();
            Fornecedores c1 = new Fornecedores();
            c1.setRazao("Empresa de Tecnologia X");
            c1.setCnpj("00.111.222.333/0001-44");
            c1.setNomefornecedor("Empresa X");
            c1.setEmailfornecedor("fornecedores@empresa.com");
            c1.setTelefonefornecedor("+55 13 99111-1111");
            c1.setEnderecofornecedor("rua sem nome");
            fornecedores.add(c1);
            
            Fornecedores c2 = new Fornecedores();
            c2.setRazao("Empresa de Tecnologia X");
            c2.setCnpj("00.111.222.333/0001-44");
            c2.setNomefornecedor("Empresa X");
            c2.setEmailfornecedor("fornecedores@empresa.com");
            c2.setTelefonefornecedor("+55 13 99111-1111");
            c2.setEnderecofornecedor("rua sem nome");
            fornecedores.add(c2);
        }
        return fornecedores;
    }
}
