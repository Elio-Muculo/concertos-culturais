//package com.cultural.eventosculturais.controller.servlet;

//public class EspectadorServlet {

    package com.cultural.eventosculturais.controller.servlet;

import com.cultural.eventosculturais.model.Espectador;
import com.cultural.eventosculturais.controller.dao.UtilizadorDao;
import com.cultural.eventosculturais.model.Utilizador;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

    @WebServlet(name = "PerfilServlet", value = "/PerfilServlet")
    public class EspectadorServlet extends HttpServlet {
        @Override
        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        }

        @Override
        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            HttpSession session = request.getSession();
//            Utilizador user = (Utilizador) session.getAttribute("user");
//            int id = user.getCodigo();
            Espectador utilizador = new Espectador();
            UtilizadorDao utilizadorDao = new UtilizadorDao();


            // mostrar mensagens para usuario
            utilizador.setNome(request.getParameter("nome"));
            utilizador.setBairro(request.getParameter("bairro"));
            utilizador.setCidade(request.getParameter("cidade"));
            utilizador.setTelefone(Integer.parseInt(request.getParameter("telefone")));
            int id = (int) request.getSession().getAttribute("user_id");
            System.out.println(id);
            utilizador.setEspectador_id(id);
            utilizadorDao.adicionaPerfil(utilizador);
//            HttpSession session =  request.getSession();
            session.setAttribute("msg", "Conta criada com sucesso!");
            RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
            rd.forward(request, response);
        }
    }

