package bean;

import java.util.Date;

public class EmpRecruitment {
	int emp_id;
	String applicant;
	Date scheduled_date;
	String interview_time;
	String venue;
	int flag;
	public String getApplicant() {
		return applicant;
	}
	public void setApplicant(String applicant) {
		this.applicant = applicant;
	}
	public Date getScheduled_date() {
		return scheduled_date;
	}
	public void setScheduled_date(Date scheduled_date) {
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
	public int getEmp_id() {
		return emp_id;
	}
	public void setEmp_id(int emp_id) {
		this.emp_id = emp_id;
	}
	public int getFlag() {
		return flag;
	}
	public void setFlag(int flag) {
		this.flag = flag;
	}


	
	
}
