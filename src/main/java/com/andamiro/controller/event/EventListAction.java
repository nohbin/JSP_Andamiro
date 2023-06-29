package com.andamiro.controller.event;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.andamiro.dao.event.EventDAO;
import com.andamiro.dto.event.EventVO;

public class EventListAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/admin/eventList.jsp";
		EventDAO eventDAO=EventDAO.getInstance();
		List<EventVO> eventList = eventDAO.getEventList();
		request.setAttribute("eventList", eventList);
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);

		
		
	}

}
