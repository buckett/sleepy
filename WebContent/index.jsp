<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String timeParam = request.getParameter("time");
	String message = "";
	if (timeParam != null && timeParam.length() > 0) {
		try {
			int seconds = Integer.parseInt(timeParam);
			Thread.sleep(seconds * 1000);
			message = "Slept for " + seconds + " seconds.";
		} catch (NumberFormatException nfe) {
			message = "Couldn't understand value";
		}
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>A very sleepy page.</title>
</head>
<body>
<%=message%>
<form>
<label for="time">How long would you like to sleep for?</label>
<input type="text" id="time" name="time">
<input type="submit" value="Sleep">
</form>

</body>
</html>