/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.cadastro;

/**
 *
 * @author alexandersantos
 */
public class Fornecedores {
    private String nomefornecedor;
    private String razao;
    private String cnpj;
    private String emailfornecedor;
    private String telefonefornecedor;
    private String enderecofornecedor;

    public String getNomefornecedor() {
        return nomefornecedor;
    }

    public void setNomefornecedor(String nomefornecedor) {
        this.nomefornecedor = nomefornecedor;
    }

    public String getRazao() {
        return razao;
    }

    public void setRazao(String razao) {
        this.razao = razao;
    }

    public String getCnpj() {
        return cnpj;
    }

    public void setCnpj(String cnpj) {
        this.cnpj = cnpj;
    }

    public String getEmailfornecedor() {
        return emailfornecedor;
    }

    public void setEmailfornecedor(String emailfornecedor) {
        this.emailfornecedor = emailfornecedor;
    }

    public String getTelefonefornecedor() {
        return telefonefornecedor;
    }

    public void setTelefonefornecedor(String telefonefornecedor) {
        this.telefonefornecedor = telefonefornecedor;
    }

    public String getEnderecofornecedor() {
        return enderecofornecedor;
    }

    public void setEnderecofornecedor(String enderecofornecedor) {
        this.enderecofornecedor = enderecofornecedor;
    }
}
