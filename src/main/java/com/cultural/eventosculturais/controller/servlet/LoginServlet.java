package com.cultural.eventosculturais.controller.servlet;

import com.cultural.eventosculturais.controller.dao.UtilizadorDao;
import com.cultural.eventosculturais.model.Utilizador;
import org.mindrot.jbcrypt.BCrypt;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

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

        utilizador.setEmail(request.getParameter("email"));
        Utilizador user = utilizadorDao.getUtilizador(utilizador);

        boolean isAuth = BCrypt.checkpw(request.getParameter("password"), user.getSenha());
        if (isAuth) {
            session.setAttribute("user", user);
            uri = "/index.jsp";
            RequestDispatcher rd = request.getRequestDispatcher(uri);
            rd.forward(request, response);
        } else {
            session.setAttribute("msg", "Erro ao autenticar, nome ou senha incorrectos!");
            response.sendRedirect("login.jsp");
        }
    }
}
