package form;

import org.apache.struts.action.ActionForm;

public class RecruitmentForm extends ActionForm
{
String applicant;
String scheduled_date;
String interview_time;
String venue;

public String getApplicant() {
	return applicant;
}
public void setApplicant(String applicant) {
	this.applicant = applicant;
}
public String getScheduled_date() {
	return scheduled_date;
}
public void setScheduled_date(String scheduled_date) {
	this.scheduled_date = scheduled_date;
}
public String getInterview_time() {
	return interview_time;
}
public void setInterview_time(String interview_time) {
	this.interview_time = interview_time;
}
public String getVenue() {
	return venue;
}
public void setVenue(String venue) {
	this.venue = venue;
}


}
