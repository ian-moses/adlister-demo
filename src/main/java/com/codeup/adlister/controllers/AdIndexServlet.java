package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.AdsIndexServlet", urlPatterns = "/ads/*")
public class AdIndexServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(request.getPathInfo());
		if(request.getPathInfo() == null){
			request.setAttribute("ads", DaoFactory.getAdsDao().all());
			request.getRequestDispatcher("/WEB-INF/ads/index.jsp").forward(request, response);
			return;
		}
		String pathInfo = request.getPathInfo();
		String ad_id = pathInfo.substring(1, pathInfo.length());
		request.setAttribute("ads", DaoFactory.getAdsDao().getAd(ad_id));
		request.getRequestDispatcher("/WEB-INF/ads/ad.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
