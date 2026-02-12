
package servlets;

import bl.AccountFacadeLocal;
import entities.Account;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ListAccounts")
public class ListAccountsServlet extends HttpServlet {

    
    @EJB
    private AccountFacadeLocal accountFacade;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        List<Account> accounts = accountFacade.findAll();
        
        request.setAttribute("accounts", accounts);
        request.getRequestDispatcher("listResult.jsp").forward(request, response);
    }

    

}
