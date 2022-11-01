package com.cultural.eventosculturais.controller.servlet;

import com.cultural.eventosculturais.controller.dao.EventoDao;
import com.cultural.eventosculturais.model.Evento;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "BilheteServlet", value = "/Bilhete")
public class BilheteServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Evento e = new Evento();
        int id = Integer.parseInt(request.getParameter("id"));
        e.setCodigo(id);
        Evento u = new EventoDao().getEvento(e);
        System.out.println(u.getName());
        request.setAttribute("evento", u);
        RequestDispatcher rd = request.getRequestDispatcher("/bilhete.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
