package com.cultural.eventosculturais.controller.servlet;

import com.cultural.eventosculturais.model.Utilizador;
import com.cultural.eventosculturais.controller.dao.UtilizadorDao;
import org.mindrot.jbcrypt.BCrypt;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CadastroServlet", value = "/CadastroServlet")
public class CadastroServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Utilizador utilizador = new Utilizador();
        UtilizadorDao utilizadorDao = new UtilizadorDao();

        // validar dados
        if (request.getParameter("password").length() < 8) {
            // provide pass with 8 characthers.
        }

        // mostrar mensagens para usuario
        HttpSession session =  request.getSession();
        String hashedPass = BCrypt.hashpw(request.getParameter("password"), BCrypt.gensalt());
        utilizador.setEmail(request.getParameter("email"));
        utilizador.setSenha(hashedPass);
        utilizadorDao.adiciona(utilizador);
        Utilizador lastInserted = utilizadorDao.getLastInsertedUser();
        System.out.println(lastInserted.getCodigo());
        session.setAttribute("user_id", lastInserted.getCodigo());
        RequestDispatcher rd = request.getRequestDispatcher("/perfil.jsp");
        rd.forward(request, response);
    }
}
