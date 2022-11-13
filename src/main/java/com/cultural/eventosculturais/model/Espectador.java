package com.cultural.eventosculturais.model;

public class Espectador {
    private String nome;
    private String bairro;
    private String cidade;
    private int telefone;
    private int espectador_id;

    public Espectador() {

    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getBairro() {
        return bairro;
    }

    public void setBairro(String bairro) {
        this.bairro = bairro;
    }

    public String getCidade() {
        return cidade;
    }

    public void setCidade(String cidade) {
        this.cidade = cidade;
    }

    public int getTelefone() {
        return telefone;
    }

    public void setTelefone(int telefone) {
        this.telefone = telefone;
    }

    public int getEspectador_id() {
        return espectador_id;
    }

    public void setEspectador_id(int espectador_id) {
        this.espectador_id = espectador_id;
    }
}
