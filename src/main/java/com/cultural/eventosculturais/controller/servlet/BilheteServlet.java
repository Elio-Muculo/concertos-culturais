package com.cultural.eventosculturais.controller.servlet;

import com.cultural.eventosculturais.controller.dao.BilheteDao;
import com.cultural.eventosculturais.controller.dao.EventoDao;
import com.cultural.eventosculturais.model.Bilhete;
import com.cultural.eventosculturais.model.Evento;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.time.LocalDate;

@WebServlet(name = "BilheteServlet", value = "/Bilhete")
public class BilheteServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Evento e = new Evento();
        int id = Integer.parseInt(request.getParameter("id"));
        e.setCodigo(id);
        Evento u = new EventoDao().getEvento(e);
        System.out.println(u.getName());
        String mes = u.getData_evento().split("-")[1];
        String newDate = HomeServlet.translateToMonth(mes) + " " + u.getData_evento().split("-")[2] + ", " + u.getData_evento().split("-")[0];

        String hora = u.getHora_inicio().substring(0,5);
        u.setHora_inicio(hora+"h");
        u.setData_evento(newDate);
        request.setAttribute("bilhete", u);
        RequestDispatcher rd = request.getRequestDispatcher("/bilhete.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null) {
            HttpSession s = request.getSession();
            s.setAttribute("msg", "Precisa iniciar sessao para poder comprar bilhete");
            response.sendRedirect("login.jsp");
            return;
        }

        int qtd = Integer.parseInt(request.getParameter("qtd"));
        String tipo = request.getParameter("tipo");
        int id = Integer.parseInt(request.getParameter("id"));
        int espectador_id = Integer.parseInt(request.getParameter("espectador_id"));

        Bilhete bilhete = new Bilhete();
        BilheteDao bilheteDao = new BilheteDao();
        EventoDao dao = new EventoDao();
        HttpSession s = request.getSession();
        Evento dados = new Evento();
        Evento evento = new Evento();

        evento.setCodigo(id);
        dados = dao.getEvento(evento);

        System.out.println(qtd);
        System.out.println(dados.getNumero_bilhete());
        System.out.println(qtd > dados.getNumero_bilhete());

        if (qtd > dados.getNumero_bilhete()) {
            System.out.println("here 1");
            s.setAttribute("msg", "Tentou comprar numero superior de bilhetes.");
            response.sendRedirect("Bilhete?id="+id);
            return;
        }

        bilhete.setTipo_bilhete(tipo);
        bilhete.setData_compra(String.valueOf(LocalDate.now()));
        bilhete.setQuantidade(qtd);
        bilhete.setEvento_id(id);
        bilhete.setEspectador_id(espectador_id);

        bilheteDao.adiciona(bilhete);

        System.out.println("here 2");

        evento.setNumero_bilhete(qtd);
        dao.altera(evento);
        s = request.getSession();
        s.setAttribute("msge", "Bilhetes comprado com sucesso");

        response.sendRedirect("Bilhete?id="+id);
        return;
    }
}
