package com.hms;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBUtil {

    private static final String URL = "jdbc:mysql://localhost:3306/hospital_db";
    private static final String USERNAME = "root";      // change if needed
    private static final String PASSWORD = "";      // change if needed

    public static Connection getConnection() throws Exception {
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection(URL, USERNAME, PASSWORD);
    }
}

