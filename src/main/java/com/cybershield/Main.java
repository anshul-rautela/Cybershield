//package com.cybershield;
//
//import java.io.IOException;
//import java.net.URL;
//import java.net.HttpURLConnection;
//import java.net.Proxy;
//
//import jakarta.servlet.ServletException;
//import jakarta.servlet.annotation.WebServlet;
//import jakarta.servlet.http.HttpServlet;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//
//@WebServlet("/vulnerability")
//public class Main extends HttpServlet {
//    @Override
//    protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
//        String website = req.getParameter("input");
//        String[] arr = new String[] { website };
//        OWASPVulnerabilityScanner.main(arr);
//        req.setAttribute("result", "Scan complete for: " + website); // optional
//        req.getRequestDispatcher("vulnerability.jsp").forward(req, res);
//    }
//}
