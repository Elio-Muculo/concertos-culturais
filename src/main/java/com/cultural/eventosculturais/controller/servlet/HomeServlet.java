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
        System.out.println("hello");
        // passing the arraylist to next request
        request.setAttribute("evento", eventos);
        RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
        rd.forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
