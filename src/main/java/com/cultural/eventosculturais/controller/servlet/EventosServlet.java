package com.cultural.eventosculturais.controller.servlet;

import com.cultural.eventosculturais.controller.dao.EventoDao;
import com.cultural.eventosculturais.model.Evento;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "EventosServlet", value = "/EventosServlet")
public class EventosServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        EventoDao eventoDao = new EventoDao();
        List<Evento> eventos = new ArrayList<Evento>();
        eventos =  eventoDao.getLista();
        for (int i = 0; i < eventos.size(); i++) {
            String mes = eventos.get(i).getData_evento().split("-")[1];
            String newDate = HomeServlet.translateToMonth(mes) + " " + eventos.get(i).getData_evento().split("-")[2] + ", " + eventos.get(i).getData_evento().split("-")[0];

            String hora = eventos.get(i).getHora_inicio().substring(0,5);
            eventos.get(i).setHora_inicio(hora+"h");
            eventos.get(i).setData_evento(newDate);
        }

        // passing the arraylist to next request
        request.setAttribute("eventosTodos", eventos);
        RequestDispatcher rd = request.getRequestDispatcher("/eventos.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
