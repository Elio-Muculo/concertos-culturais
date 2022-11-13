package com.cultural.eventosculturais.controller.dao;

import com.cultural.eventosculturais.controller.utils.ConnectionFactory;
import com.cultural.eventosculturais.model.Espectador;
import com.cultural.eventosculturais.model.Utilizador;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UtilizadorDao {
    Connection connection;

    public  UtilizadorDao() {
        this.connection = new ConnectionFactory().getConnection();
    }

    public void adiciona(Utilizador utilizador) {
        String sql = "INSERT INTO utilizador (email, senha, perfil) VALUES (?, ?, ?)";
        try {
            PreparedStatement stmt = this.connection.prepareStatement(sql);
            stmt.setString(1, utilizador.getEmail());
            stmt.setString(2, utilizador.getSenha());
            stmt.setString(3, "espectador");

            stmt.execute();
            stmt.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public Utilizador getLastInsertedUser() {
        String sql = "select * from utilizador order by codigo desc limit 1";
        Utilizador utilizador1 = new Utilizador();
        try {
            PreparedStatement stmt = this.connection.prepareStatement(sql);
            ResultSet set = stmt.executeQuery();
            while (set.next()) {
                utilizador1.setCodigo(set.getInt("codigo"));
                utilizador1.setEmail(set.getString("email"));
                utilizador1.setSenha(set.getString("senha"));
                utilizador1.setPerfil(set.getString("perfil"));
            }

            stmt.close();
            return utilizador1;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public void adicionaPerfil(Espectador utilizador) {
        String sql = "INSERT INTO espectador (nome, bairro, cidade, telefone, espectador_id) VALUES (?, ?, ?, ?, ?)";
        try {
            PreparedStatement stmt = this.connection.prepareStatement(sql);
            stmt.setString(1, utilizador.getNome());
            stmt.setString(2, utilizador.getBairro());

            stmt.setString(3, utilizador.getCidade());

            stmt.setInt(4, utilizador.getTelefone());

            stmt.setInt(5, utilizador.getEspectador_id());

            stmt.execute();
            stmt.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public Utilizador getUtilizador(Utilizador utilizador) {
        String sql = "select * from utilizador where email = ?";
        Utilizador utilizador1 = new Utilizador();
        try {
            PreparedStatement stmt = this.connection.prepareStatement(sql);
            stmt.setString(1, utilizador.getEmail());
            ResultSet set = stmt.executeQuery();

            while (set.next()) {
                utilizador1.setCodigo(set.getInt("codigo"));
                utilizador1.setEmail(set.getString("email"));
                utilizador1.setSenha(set.getString("senha"));
                utilizador1.setPerfil(set.getString("perfil"));
            }

            stmt.close();
            return utilizador1;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
