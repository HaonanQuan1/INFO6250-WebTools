package com.luv2code.part5.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

public class BookDao {

    public int addBooks(List<String> isbn, List<String> title, List<String> author, List<String> prices) throws SQLException {
        int res = 0;
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        DAO dao = new DAO();
        try {
            connection = dao.getConnection();
            String sql = "insert into books (isbn, title, author, price) value (?,?,?,?)";
            preparedStatement = connection.prepareStatement(sql);
            for(int i = 0 ; i < isbn.size(); i++){
                preparedStatement.setString(1,isbn.get(i));
                preparedStatement.setString(2, title.get(i));
                preparedStatement.setString(3, author.get(i));
                preparedStatement.setDouble(4, Double.parseDouble(prices.get(i)));
                res = preparedStatement.executeUpdate();
                if(res < 0){
                    throw new Exception("Add Failed!");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
//            return 0;
        }finally {
            preparedStatement.close();
            connection.close();
        }

        return res;
    }
}
