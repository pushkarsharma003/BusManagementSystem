/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Admin;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author PushkarSharma
 */
public class AddStudent extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            String username=request.getParameter("username");
            String password=request.getParameter("password");
            int id= Integer.parseInt(request.getParameter("id"));
            int batch=Integer.parseInt(request.getParameter("batch"));
            String mobileno=request.getParameter("mobileno");
            String email=request.getParameter("email");
            userlogindata ul=new userlogindata();
            ul.setBatch(batch);
            ul.setId(id);
            ul.setPassword(password);
            ul.setUsername(username);
            ul.setMobileno(mobileno);
            ul.setEmail(email);
            Configuration cf=new Configuration();
            cf.configure("BmsCfg/AddStudent.cfg.xml");
            SessionFactory sf=cf.buildSessionFactory();
            Session session=sf.openSession();
            Transaction tx=session.beginTransaction();
            session.save(ul);
            tx.commit();
            HttpSession as=request.getSession();
            as.setAttribute("studentAdded",112);
            session.close();
            sf.close();
            response.sendRedirect("AddStudent.jsp");
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
