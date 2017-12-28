package form;

import org.apache.struts.action.ActionForm;

public class AssetsForm extends ActionForm{
String employee_name;
String rent;
String team;
String date_to_given;
String designation;
String work_location;
String company_of_laptop;
String configuration;
String courier_done;
String laptop_received_by_employee;

public String getEmployee_name() {
	return employee_name;
}
public void setEmployee_name(String employee_name) {
	this.employee_name = employee_name;
}
public String getRent() {
	return rent;
}
public void setRent(String rent) {
	this.rent = rent;
}
public String getTeam() {
	return team;
}
public void setTeam(String team) {
	this.team = team;
}
public String getDate_to_given() {
	return date_to_given;
}
public void setDate_to_given(String date_to_given) {
	this.date_to_given = date_to_given;
}
public String getDesignation() {
	return designation;
}
public void setDesignation(String designation) {
	this.designation = designation;
}
public String getWork_location() {
	return work_location;
}
public void setWork_location(String work_location) {
	this.work_location = work_location;
}
public String getCompany_of_laptop() {
	return company_of_laptop;
}
public void setCompany_of_laptop(String company_of_laptop) {
	this.company_of_laptop = company_of_laptop;
}
public String getConfiguration() {
	return configuration;
}
public void setConfiguration(String configuration) {
	this.configuration = configuration;
}
public String getCourier_done() {
	return courier_done;
}
public void setCourier_done(String courier_done) {
	this.courier_done = courier_done;
}
public String getLaptop_received_by_employee() {
	return laptop_received_by_employee;
}
public void setLaptop_received_by_employee(String laptop_received_by_employee) {
	this.laptop_received_by_employee = laptop_received_by_employee;
}

}
