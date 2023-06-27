package com.andamiro.controller.review;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.andamiro.controller.action.ReviewAction;
import com.andamiro.dao.review.ReviewDAO;
import com.andamiro.dto.review.ReviewVO;

public class ReviewUpdateAction implements ReviewAction {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ReviewVO rVo = new ReviewVO();
		
		rVo.setNum(Integer.parseInt(request.getParameter("num")));
		rVo.setTitle(request.getParameter("title"));
		rVo.setReview(request.getParameter("review"));
		rVo.setRecipegrade(Integer.parseInt(request.getParameter("recipegrade")));
		rVo.setJoindate(null);
		rVo.setImg(request.getParameter("img"));
		ReviewDAO rDao = ReviewDAO.getInstance();
		rDao.updateReview(rVo);
		new ReviewListAction().execute(request, response);
	}

}