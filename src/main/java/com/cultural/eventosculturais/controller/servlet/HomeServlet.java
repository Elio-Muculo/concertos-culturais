package com.cultural.eventosculturais.controller.servlet;

import com.cultural.eventosculturais.controller.dao.EventoDao;
import com.cultural.eventosculturais.model.Evento;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;


public class HomeServlet extends HttpServlet {
    @Override
    public void init() throws ServletException {
        super.init();
    }

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

    public static String translateToMonth(String mes) {
        String m = "";
        switch (mes) {
            case "01":
                m = "Jan";
                break;
            case "02":
                m = "Fev";
                break;
            case "03":
                m = "Mar";
                break;
            case "04":
                m = "Abril";
                break;
            case "05":
                m = "Maio";
                break;
            case "06":
                m = "Jun";
                break;
            case "07":
                m = "Julho";
                break;
            case "08":
                m = "Aug";
                break;
            case "09":
                m = "Set";
                break;
            case "10":
                m = "Out";
                break;
            case "11":
                m = "Nov";
                break;
            case "12":
                m = "Dec";
                break;
        }

        return  m;
    }
}
