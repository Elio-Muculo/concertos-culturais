package com.cultural.eventosculturais.model;

public class Bilhete {
    private String estado;
    private String data_compra;
    private String tipo_bilhete;
    private int quantidade;
    private int espectador_id;
    private int evento_id;

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getData_compra() {
        return data_compra;
    }

    public void setData_compra(String data_compra) {
        this.data_compra = data_compra;
    }

    public String getTipo_bilhete() {
        return tipo_bilhete;
    }

    public void setTipo_bilhete(String tipo_bilhete) {
        this.tipo_bilhete = tipo_bilhete;
    }

    public int getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(int quantidade) {
        this.quantidade = quantidade;
    }

    public int getEspectador_id() {
        return espectador_id;
    }

    public void setEspectador_id(int espectador_id) {
        this.espectador_id = espectador_id;
    }

    public int getEvento_id() {
        return evento_id;
    }

    public void setEvento_id(int evento_id) {
        this.evento_id = evento_id;
    }
}
