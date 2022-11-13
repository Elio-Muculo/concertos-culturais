package com.cultural.eventosculturais.model;

public class Evento {
    private int codigo;
    private String name;
    private String hora_inicio;
    private String hora_fim;
    private String data_evento;
    private int numero_bilhete;
    private String local_evento;
    private String promotor;
    private String cartaz;
    private double valor_evento;
    private int admin_id;

    private String descricao;

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getHora_inicio() {
        return hora_inicio;
    }

    public void setHora_inicio(String hora_inicio) {
        this.hora_inicio = hora_inicio;
    }

    public String getHora_fim() {
        return hora_fim;
    }

    public void setHora_fim(String hora_fim) {
        this.hora_fim = hora_fim;
    }

    public String getData_evento() {
        return data_evento;
    }

    public void setData_evento(String data_evento) {
        this.data_evento = data_evento;
    }

    public int getNumero_bilhete() {
        return numero_bilhete;
    }

    public void setNumero_bilhete(int numero_bilhete) {
        this.numero_bilhete = numero_bilhete;
    }

    public String getLocal_evento() {
        return local_evento;
    }

    public void setLocal_evento(String local_evento) {
        this.local_evento = local_evento;
    }

    public String getPromotor() {
        return promotor;
    }

    public void setPromotor(String promotor) {
        this.promotor = promotor;
    }

    public String getCartaz() {
        return cartaz;
    }

    public void setCartaz(String cartaz) {
        this.cartaz = cartaz;
    }

    public double getValor_evento() {
        return valor_evento;
    }

    public void setValor_evento(double valor_evento) {
        this.valor_evento = valor_evento;
    }

    public int getAdmin_id() {
        return admin_id;
    }

    public void setAdmin_id(int admin_id) {
        this.admin_id = admin_id;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }


}
