package com.example.dreamfurniture;

import android.os.StrictMode;
import android.util.Log;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionClass {

    String cnm = "com.mysql.jdbc.Driver";
    String url = "jdbc:mysql://192.168.43.229/df";
    String unm = "root";
    String ps = "";

    public Connection conn() {
        StrictMode.ThreadPolicy policy = new StrictMode.ThreadPolicy.Builder().permitAll().build();
        StrictMode.setThreadPolicy(policy);
        Connection cnn = null;
        //String curl = null;
        try {
            Class.forName(cnm);
            cnn = DriverManager.getConnection(url,unm,ps);
            //cnn = DriverManager.getConnection(curl);
        }catch (SQLException se) {
            Log.e("sqlexception",se.getMessage());
        }catch (ClassNotFoundException ce) {
            Log.e("class not exception",ce.getMessage());
        }catch (Exception e) {
            Log.e("exception",e.getMessage());
        }
        return cnn;
    }
}