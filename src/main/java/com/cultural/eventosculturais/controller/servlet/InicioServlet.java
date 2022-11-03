package com.cultural.eventosculturais.controller.servlet;

import com.cultural.eventosculturais.controller.dao.EventoDao;
import com.cultural.eventosculturais.model.Evento;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import static com.cultural.eventosculturais.controller.servlet.HomeServlet.translateToMonth;

@WebServlet(name = "InicioServlet", value = "/InicioServlet")
public class InicioServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        EventoDao eventoDao = new EventoDao();
        List<Evento> eventos = new ArrayList<Evento>();
        eventos =  eventoDao.getLista();
        HttpSession session = request.getSession();
        for (int i = 0; i < eventos.size(); i++) {
            String mes = eventos.get(i).getData_evento().split("-")[1];
            String newDate = translateToMonth(mes) + " " + eventos.get(i).getData_evento().split("-")[2] + ", " + eventos.get(i).getData_evento().split("-")[0];
            String hora = eventos.get(i).getHora_inicio().substring(0,5);

            eventos.get(i).setHora_inicio(hora+"horas");
            eventos.get(i).setData_evento(newDate);
        }
        // passing the arraylist to next request
        session.setAttribute("evento", eventos);
        RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
