package com.cultural.eventosculturais.controller.dao;

import com.cultural.eventosculturais.controller.utils.ConnectionFactory;
import com.cultural.eventosculturais.model.Evento;
import com.cultural.eventosculturais.model.Utilizador;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class EventoDao {
    Connection connection;

    public EventoDao() {
        connection = new ConnectionFactory().getConnection();
    }

    public void altera(Evento evento) {
        String sql = "UPDATE evento set numero_bilhete = numero_bilhete - ?  WHERE codigo = ?";
        try {
            PreparedStatement stmt = this.connection.prepareStatement(sql);
            stmt.setInt(1, evento.getNumero_bilhete());
            stmt.setInt(2, evento.getCodigo());

            stmt.execute();
            stmt.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }


    public Evento getEvento(Evento evento) {
        String sql = "select * from evento where codigo = ?";
        Evento evento2 = new Evento();
        try {
            PreparedStatement stmt = this.connection.prepareStatement(sql);
            stmt.setInt(1, evento.getCodigo());
            ResultSet set = stmt.executeQuery();

            while (set.next()) {
                evento2.setCodigo(set.getInt("codigo"));
                evento2.setName(set.getString("nome"));
                evento2.setHora_inicio(set.getString("hora_inicio"));
                evento2.setHora_fim(set.getString("hora_fim"));
                evento2.setData_evento(set.getString("data_evento"));
                evento2.setLocal_evento(set.getString("local_evento"));
                evento2.setPromotor(set.getString("promotor"));
                evento2.setNumero_bilhete(set.getInt("numero_bilhete"));
                evento2.setCartaz(set.getString("cartaz"));
                evento2.setValor_evento(set.getDouble("valor_evento"));
                evento2.setAdmin_id(set.getInt("admin_id"));
                evento2.setDescricao(set.getString("descricao"));
            }

            stmt.close();
            return evento2;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public List<Evento> getLista() {
        String sql = "select * from evento";
        List<Evento> evento2 = new ArrayList<Evento>();
        try {
            PreparedStatement stmt = this.connection.prepareStatement(sql);

            ResultSet set = stmt.executeQuery();

            while (set.next()) {
                Evento evento3 = new Evento();
                evento3.setCodigo(set.getInt("codigo"));
                evento3.setName(set.getString("nome"));
                evento3.setHora_inicio(set.getString("hora_inicio"));
                evento3.setHora_fim(set.getString("hora_fim"));
                evento3.setData_evento(set.getString("data_evento"));
                evento3.setLocal_evento(set.getString("local_evento"));
                evento3.setPromotor(set.getString("promotor"));
                evento3.setNumero_bilhete(set.getInt("numero_bilhete"));
                evento3.setCartaz(set.getString("cartaz"));
                evento3.setValor_evento(set.getDouble("valor_evento"));
                evento3.setAdmin_id(set.getInt("admin_id"));
                evento3.setDescricao(set.getString("descricao"));

                evento2.add(evento3);
            }

            stmt.close();
            return evento2;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
