package com.luv2code.part4.controller;

import com.luv2code.part4.DAO.MovieDao;
import com.luv2code.part4.entity.Movie;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@Controller
//@RequestMapping("/part4")
public class AddMovieController extends AbstractController {

    @Autowired
    private MovieDao movieDao;
    @Override
    protected ModelAndView handleRequestInternal(HttpServletRequest request, HttpServletResponse response) throws Exception {
//        ModelAndView modelAndView = new ModelAndView("")
        String title = request.getParameter("title");
        String actor = request.getParameter("actor");
        String actress = request.getParameter("actress");
        String genre = request.getParameter("genre");
        String year = request.getParameter("year");
        if(request.getAttribute("unsafe_request") == "true") {
            return new ModelAndView("part4/securityerror");
        }
       int res = movieDao.addMovie(title,actor,actress,genre,year);
       ModelAndView modelAndView = null;
       if(res == 1){
           Movie movie = new Movie(title,actor,actress,genre,year);
           modelAndView = new ModelAndView("part4/successAdded","Movie",movie);
       }else{
           modelAndView = new ModelAndView("part4/error");

       }
       return modelAndView;

    }

//    @GetMapping("/main")
//    public String showMain(){
//        return "part4/home";
//    }


}
