package com.codeup.adlister.controllers;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Authored by Moses Franco, Ian Doherty on 6/14/17
 * Codeup
 * Pinnacles
 */
@WebServlet(name = "AdIndexServlet", urlPatterns = "ads/*")
public class AdIndexServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		String pathInfo = request.getPathInfo();
		String redirectURL = "ads" + pathInfo;
		response.sendRedirect(redirectURL);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/ads/ad.jsp");
	}
}
