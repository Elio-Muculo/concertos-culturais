package com.cultural.eventosculturais.controller.servlet;

import com.cultural.eventosculturais.controller.dao.EventoDao;
import com.cultural.eventosculturais.controller.dao.UtilizadorDao;
import com.cultural.eventosculturais.model.Evento;
import com.cultural.eventosculturais.model.Utilizador;
import org.mindrot.jbcrypt.BCrypt;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import static com.cultural.eventosculturais.controller.servlet.HomeServlet.translateToMonth;

@WebServlet(name = "LoginServlet", value = "/LoginServlet")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Utilizador utilizador = new Utilizador();
        HttpSession session = request.getSession();
        UtilizadorDao utilizadorDao = new UtilizadorDao();
        String uri;


        EventoDao eventoDao = new EventoDao();
        List<Evento> eventos = new ArrayList<Evento>();
        eventos =  eventoDao.getLista();
        session = request.getSession();
        for (int i = 0; i < eventos.size(); i++) {
            String mes = eventos.get(i).getData_evento().split("-")[1];
            String newDate = translateToMonth(mes) + " " + eventos.get(i).getData_evento().split("-")[2] + ", " + eventos.get(i).getData_evento().split("-")[0];
            String hora = eventos.get(i).getHora_inicio().substring(0,5);

            eventos.get(i).setHora_inicio(hora+"horas");
            eventos.get(i).setData_evento(newDate);
        }
        // passing the arraylist to next request
        session.setAttribute("evento", eventos);



        utilizador.setEmail(request.getParameter("email"));
        Utilizador user = utilizadorDao.getUtilizador(utilizador);

        boolean isAuth = BCrypt.checkpw(request.getParameter("password"), user.getSenha());
        if (isAuth) {
            session.setAttribute("user", user);
            uri = "/index.jsp";
            RequestDispatcher rd = request.getRequestDispatcher(uri);
            rd.forward(request, response);
        } else {
            session.setAttribute("msg", "Erro ao autenticar, email ou senha incorrectos!");
            session.setMaxInactiveInterval(10);
            response.sendRedirect("login.jsp");
        }
    }
}
