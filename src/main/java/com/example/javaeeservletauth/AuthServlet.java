package com.example.javaeeservletauth;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "auth", value = "/auth/login")
public class AuthServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");

        if (username.equals("admin") && password.equals("123456")) {
            res.sendRedirect(req.getContextPath() + "/welcome");
        } else {
            res.getWriter().write("<html><body><h1>Login failed!</h1></body></html>");
        }
    }
}
