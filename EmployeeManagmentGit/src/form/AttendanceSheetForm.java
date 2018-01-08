package form;

import org.apache.struts.action.ActionForm;

public class AttendanceSheetForm extends ActionForm {

	int emp_id;
	int total_working_days;
	int total_present_days;
	int total_billing_days;
	int leaves_taken;
	String leave_type;
	
	
	public int getEmp_id() {
		return emp_id;
	}
	public void setEmp_id(int emp_id) {
		this.emp_id = emp_id;
	}
	public int getTotal_working_days() {
		return total_working_days;
	}
	public void setTotal_working_days(int total_working_days) {
		this.total_working_days = total_working_days;
	}
	public int getTotal_present_days() {
		return total_present_days;
	}
	public void setTotal_present_days(int total_present_days) {
		this.total_present_days = total_present_days;
	}
	public int getLeaves_taken() {
		return leaves_taken;
	}
	public void setLeaves_taken(int leaves_taken) {
		this.leaves_taken = leaves_taken;
	}
	public String getLeave_type() {
		return leave_type;
	}
	public void setLeave_type(String leave_type) {
		this.leave_type = leave_type;
	}
	public int getTotal_billing_days() {
		return total_billing_days;
	}
	public void setTotal_billing_days(int total_billing_days) {
		this.total_billing_days = total_billing_days;
	}
	
	
}
