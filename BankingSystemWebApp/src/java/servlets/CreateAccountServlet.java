/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import bl.AccountFacadeLocal;
import entities.Account;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author hp
 */
@WebServlet("/CreateAccount")
public class CreateAccountServlet extends HttpServlet {

    
    @EJB
    private AccountFacadeLocal accountFacade;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        Long id = Long.parseLong(request.getParameter("id"));

        Account existing = accountFacade.find(id);
        if (existing != null) {
            request.setAttribute("message", "Account ID already exists.");
            request.getRequestDispatcher("createOutput.jsp").forward(request, response);
            return;
        }
        
        Account acc = new Account();
        acc.setId(id);
        acc.setFullName(request.getParameter("fullName"));
        acc.setEmail(request.getParameter("email"));
        acc.setBalance(Double.parseDouble(request.getParameter("balance")));
        acc.setCreationDate(new Date());

        accountFacade.create(acc);

        request.setAttribute("account", acc);
        request.getRequestDispatcher("createOutput.jsp").forward(request, response);
    }

    

}
