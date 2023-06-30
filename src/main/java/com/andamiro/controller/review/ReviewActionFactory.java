package com.andamiro.controller.review;

import com.andamiro.controller.action.ReviewAction;
import com.andamiro.controller.main.MainRecipeAction;
import com.andamiro.controller.main.MainSearchAction;


public class ReviewActionFactory {
	private static ReviewActionFactory instance = new ReviewActionFactory();
	public ReviewActionFactory() {
		super();
	}
	public static ReviewActionFactory getInstance() {
		return instance;
	}
	
	public ReviewAction getAction(String command) {
		ReviewAction action = null;
		System.out.println("ActionFactory :" + command);
		
		if(command.equals("main")) {
			action = new MainAction();
		}else if(command.equals("review")) {
			action = new ReviewListAction();
		}else if(command.equals("myreview")) {
			action = new MyreviewListAction();			
		}else if(command.equals("myreview_delete")) {
			action = new MyreviewDeleteAction();
		}else if(command.equals("myreview_update_form")) {
			action = new ReviewUpdateFormAction();
		}else if(command.equals("myreview_update")) {
			action = new ReviewUpdateAction();
		}else if (command.equals("review_write")) {
			action = new ReviewWriteAction();

		}
		
		return action;
	}
	
	
}