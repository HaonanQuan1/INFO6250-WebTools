package com.luv2code.part4.controller;

import com.luv2code.part4.DAO.MovieDao;
import com.luv2code.part4.entity.Movie;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

public class BrowseMovieController extends AbstractController {
    @Autowired
    MovieDao movieDao;
    @Override
    protected ModelAndView handleRequestInternal(HttpServletRequest request, HttpServletResponse response) throws Exception {
        List<Movie> list = null;
        String search = request.getParameter("search");
        String param = request.getParameter("keyword");
        if(request.getAttribute("unsafe_request") == "true") {
            return new ModelAndView("part4/securityerror");
        }
        list = movieDao.searchUser(search,param);
        ModelAndView modelAndView = null;
        System.out.println(list.get(0));
        if(list == null || list.isEmpty()){
            modelAndView = new ModelAndView("part4/error");
        }else{
            modelAndView = new ModelAndView("part4/successBrowse","list",list);

        }
        return modelAndView;
    }
}
