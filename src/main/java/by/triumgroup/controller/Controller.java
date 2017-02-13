package by.triumgroup.controller;

import by.triumgroup.entity.User;
import by.triumgroup.model.Model;
import by.triumgroup.model.ModelException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Main Servlet", urlPatterns = {"/controller"})
public class Controller extends HttpServlet {

    private static final String USER_LIST_PAGE_PATH = "/WEB-INF/jsp/user_list.jsp";
    private static final String USERS_ATTRIBUTE = "users";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            List<User> users = Model.getInstance().selectAllUsers();
            request.setAttribute(USERS_ATTRIBUTE, users);
            request.getRequestDispatcher(USER_LIST_PAGE_PATH).forward(request, response);
        } catch (ModelException e) {
            e.printStackTrace();
            response.sendError(500);
        }
    }
}
