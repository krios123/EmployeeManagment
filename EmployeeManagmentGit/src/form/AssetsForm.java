package form;

import org.apache.struts.action.ActionForm;

public class AssetsForm extends ActionForm{
	

int employee_id;
String rent;
String date_to_given;
String company_of_laptop;
String configuration;
String courier_done;
String laptop_received_by_employee;



public String getRent() {
	return rent;
}
public void setRent(String rent) {
	this.rent = rent;
}

public String getDate_to_given() {
	return date_to_given;
}
public void setDate_to_given(String date_to_given) {
	this.date_to_given = date_to_given;
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
public int getEmployee_id() {
	return employee_id;
}
public void setEmployee_id(int employee_id) {
	this.employee_id = employee_id;
}

}
