/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utilities;

import java.sql.Connection;
import java.sql.SQLException;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

/**
 *
 * @author ifyou
 */
public class DBHelper {
    public static Connection getConnection() throws NamingException, SQLException{
        Context context = new InitialContext();
        Context tomcatcontext = (Context) context.lookup("java:comp/env");
        DataSource d = (DataSource) tomcatcontext.lookup("dem");
        Connection con = d.getConnection();
        return con;
    }
}
