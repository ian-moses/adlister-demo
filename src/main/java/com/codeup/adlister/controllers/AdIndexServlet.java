package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.AdIndexServlet", urlPatterns = "/ad")
public class AdIndexServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Long ad_id = Long.parseLong(request.getParameter("id"));
		System.out.println(ad_id);
		request.setAttribute("ads", DaoFactory.getAdsDao().getAd(ad_id)); //Parameter might be better if it was ad, or to show a 404
		request.getRequestDispatcher("/WEB-INF/ads/ad.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
