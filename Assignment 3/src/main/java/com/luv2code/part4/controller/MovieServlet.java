package com.luv2code.part4.controller;

import com.luv2code.part4.DAO.MovieDao;
import com.luv2code.part4.entity.Movie;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "MovieServlet")
public class MovieServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher;
        PrintWriter out = response.getWriter();

        String option = request.getParameter("option");

        if(option.equals("Add")){
            Movie movie = new Movie();
            String title = request.getParameter("title");
            String actor = request.getParameter("actor");
            String actress = request.getParameter("actress");
            String genre = request.getParameter("genre");
            String year = request.getParameter("year");

            MovieDao movieDao = new MovieDao();
            int res = movieDao.addMovie(title,actor,actress,genre,year);

            if(res == 1){
                movie.setTitle(title);
                movie.setActor(actor);
                movie.setActress(actress);
                movie.setGenre(genre);
                movie.setYear(year);
                request.setAttribute("movieInstance",movie);
                System.out.println(movie.getActor());
                requestDispatcher = getServletContext().getRequestDispatcher("/part4/successAdded.jsp");
                try{
                    requestDispatcher.forward(request, response);
                }catch(ServletException | IOException e){
                    out.println(e);
                }
            }else{
                requestDispatcher = getServletContext().getRequestDispatcher("/part4/error.jsp");
                requestDispatcher.forward(request, response);
            }
        } else if (option.equalsIgnoreCase("browse")) {
            List<Movie> list = null;
            MovieDao searchDao = new MovieDao();
            String searchValue = request.getParameter("search");
            String param = request.getParameter("keyword");
            try {
                list = searchDao.searchUser(searchValue,param);
            } catch (SQLException e) {
                e.printStackTrace();
            }
            if(list == null || list.isEmpty()){
                requestDispatcher = getServletContext().getRequestDispatcher("/part4/noMovieFound.jsp");
                try {
                    requestDispatcher.forward(request, response);
                } catch (ServletException | IOException ex) {
                    out.println(ex);
                }
            }else{
                request.setAttribute("searchedMovies",list);
                System.out.println(list.get(0).getTitle());
                requestDispatcher = getServletContext().getRequestDispatcher("/part4/successBrowse.jsp");
                try{
                    requestDispatcher.forward(request,response);
                }catch (ServletException | IOException e){
                    e.printStackTrace();
                }
            }

        }
    }
    public void handleServletRequest(String option, HttpSession session, HttpServletRequest request, HttpServletResponse response){
        RequestDispatcher requestDispatcher;
        if(option.equals("Add")) {
            requestDispatcher = getServletContext().getRequestDispatcher("/part4/addNewMovie.jsp");
            try {
                requestDispatcher.forward(request, response);
            } catch (ServletException | IOException e) {
                e.printStackTrace();
            }

        }else if(option.equals("Browse")){
            requestDispatcher = getServletContext().getRequestDispatcher("/part4/browseMovie.jsp");
            try{
                requestDispatcher.forward(request,response);
            }catch (ServletException | IOException e){
                e.printStackTrace();
            }
        }
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String optionValue = request.getParameter("option");
        HttpSession session = request.getSession();
        handleServletRequest(optionValue, session, request, response);

    }
}
