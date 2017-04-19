package com.edu.capstone.validators;
/**
 * International Technological University, San Jose
 * created on : 03/05/2016
 * @author Kavya
 */
public class EMailIdValidator {
    
	/**
	 * method : validateUserEmailId(String eMailId, String userType)
	 * @param eMailId
	 * @param userType
	 * @return boolean
	 * @author Kavya
	 * @date : 04/17/2017
	 */
	

	
	public static boolean validateUserEmailId(String emailId){
		
	boolean value = false;
	if(!(emailId.isEmpty() || emailId == null)){
	if(!(emailId.equalsIgnoreCase("sample@example.com"))){
		String  values = "(.*[.com,.org,.net,.int,.edu,.gov,.mil,.co,.in])";
		String lowerCaseChars = "(.*[a-z].*)";
		String numbers = "(.*[0-9].*) ";
		if(emailId.matches(values) &&  emailId.toLowerCase().matches(lowerCaseChars) && validateEmailSpecialCharacters(emailId) || emailId.matches(numbers)){
				value = true;
			}
      }
	}
	return value;
	}
	
	private static boolean validateEmailSpecialCharacters(String emailId){
		boolean message = false;
		String specialChars = "(.*[,~,!,#,$,%,^,&,*,(,),,-,=,+,[,{,],},|,;,:,<,>,/,?].*$)";
		  if(emailId.matches(specialChars)){
			  message = false;
		  }
		  else{
			  message=true;
		  }
		return message;
	}
}
