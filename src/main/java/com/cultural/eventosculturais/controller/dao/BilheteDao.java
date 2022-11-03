package com.cultural.eventosculturais.controller.dao;

import com.cultural.eventosculturais.controller.utils.ConnectionFactory;
import com.cultural.eventosculturais.model.Bilhete;
import com.cultural.eventosculturais.model.Utilizador;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class BilheteDao {
    Connection connection;

    public  BilheteDao() {
        this.connection = new ConnectionFactory().getConnection();
    }

    public void adiciona(Bilhete bilhete) {
        String sql = "INSERT INTO bilhete (estado, data_compra, tipo_bilhete, quantidade, espectador_id, evento_id) VALUES (?, ?, ?, ?, ?, ?)";
        try {
            PreparedStatement stmt = this.connection.prepareStatement(sql);
            stmt.setString(1, "pago");
            stmt.setString(2, bilhete.getData_compra());
            stmt.setString(3, bilhete.getTipo_bilhete());
            stmt.setInt(4, bilhete.getQuantidade());
            stmt.setInt(5, bilhete.getEspectador_id());
            stmt.setInt(6, bilhete.getEvento_id());

            stmt.execute();
            stmt.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
