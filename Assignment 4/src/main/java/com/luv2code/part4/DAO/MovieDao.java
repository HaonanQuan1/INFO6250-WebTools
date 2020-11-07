package com.luv2code.part4.DAO;

import com.luv2code.part4.entity.Movie;
import org.apache.commons.dbutils.QueryRunner;
import org.springframework.stereotype.Component;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

@Component
public class MovieDao {
    public int addMovie(String title, String actor, String actress, String genre, String year){
        int res = 0;
        Connection connection = null;
        try{
            DAO dao = new DAO();
            connection = dao.getConnection();
            QueryRunner queryRunner = new QueryRunner();
            String sql = "Insert into movies(title,actor,actress,genre,year) Values(?,?,?,?,?)";
            res = queryRunner.execute(connection,sql,title,actor,actress,genre,year);
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
        return res;
    }

    public List<Movie> searchUser(String searchVal, String keyword) throws SQLException {

        List<Movie> result = new ArrayList();
        Connection connection = null;
        Statement statement = null;
        ResultSet res = null;
        try{
            DAO dao = new DAO();
            connection = dao.getConnection();
//            QueryRunner queryRunner = new QueryRunner();
            statement = connection.createStatement();
            String sql = "select * from movies where ";
            if(searchVal.equals("title")){
                sql += "title = '" + keyword + "'";
            }else if(searchVal.equals("actor")){
                sql += "actor = '" + keyword + "'";
            }else if(searchVal.equals("actress")){
                sql += "actress = '" + keyword + "'";
            }
            res = statement.executeQuery(sql);
            while(res.next()){
                Movie movie = new Movie();
                String title = res.getString(1);
                String actor = res.getString(2);
                String actress = res.getString(3);
                String genre = res.getString(4);
                String year = res.getString(5);
                movie.setTitle(title);
                movie.setActor(actor);
                movie.setActress(actress);
                movie.setGenre(genre);
                movie.setYear(year);
                result.add(movie);
            }
            res.close();
            statement.close();
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }



        return result;
    }

}
