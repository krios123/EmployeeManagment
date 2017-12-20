package form;

import org.apache.struts.action.ActionForm;
import org.apache.struts.validator.ValidatorForm;

public class RegistrationForm extends ValidatorForm {
	
	String emp_name;
	String designation;
	String date_of_birth;
	String gender;
	String fathers_name;
	int fathers_contact_details;
	String fathers_designation;
	String personal_mail_id;
	String permanent_address;
	String local_address;
	int contact_no;
	String highest_qualification;
	int year_of_Experience;
	String date_of_joining;
	String date_of_registration;
	int salary_at_the_time_of_joining;
	String passport_no;
	String pancard_no;
	String pF_no;
	String official_bank_name;
	int official_bank_account_no;
	String employee_personal_bank_name;
	int personal_bank_account_no;
	String bank_address;
	String iFSC_code;
	int increment_amount;
	int increment_amount_date;
	int total_leave_permissioned;
	int total_leave_taken_from_jan_till_dec;
	int total_leave_taken;
	String absent;
	int total_yearly_leave_taken;
	
	public String getEmp_name() {
		return emp_name;
	}
	public void setEmp_name(String emp_name) {
		this.emp_name = emp_name;
	}
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	public String getDate_of_birth() {
		return date_of_birth;
	}
	public void setDate_of_birth(String date_of_birth) {
		this.date_of_birth = date_of_birth;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getFathers_name() {
		return fathers_name;
	}
	public void setFathers_name(String fathers_name) {
		this.fathers_name = fathers_name;
	}
	public int getFathers_contact_details() {
		return fathers_contact_details;
	}
	public void setFathers_contact_details(int fathers_contact_details) {
		this.fathers_contact_details = fathers_contact_details;
	}
	public String getFathers_designation() {
		return fathers_designation;
	}
	public void setFathers_designation(String fathers_designation) {
		this.fathers_designation = fathers_designation;
	}
	public String getPersonal_mail_id() {
		return personal_mail_id;
	}
	public void setPersonal_mail_id(String personal_mail_id) {
		this.personal_mail_id = personal_mail_id;
	}
	public String getPermanent_address() {
		return permanent_address;
	}
	public void setPermanent_address(String permanent_address) {
		this.permanent_address = permanent_address;
	}
	public String getLocal_address() {
		return local_address;
	}
	public void setLocal_address(String local_address) {
		this.local_address = local_address;
	}
	public int getContact_no() {
		return contact_no;
	}
	public void setContact_no(int contact_no) {
		this.contact_no = contact_no;
	}
	public String getHighest_qualification() {
		return highest_qualification;
	}
	public void setHighest_qualification(String highest_qualification) {
		this.highest_qualification = highest_qualification;
	}
	public int getYear_of_Experience() {
		return year_of_Experience;
	}
	public void setYear_of_Experience(int year_of_Experience) {
		this.year_of_Experience = year_of_Experience;
	}
	public String getDate_of_joining() {
		return date_of_joining;
	}
	public void setDate_of_joining(String date_of_joining) {
		this.date_of_joining = date_of_joining;
	}
	public String getDate_of_registration() {
		return date_of_registration;
	}
	public void setDate_of_registration(String date_of_registration) {
		this.date_of_registration = date_of_registration;
	}
	public int getSalary_at_the_time_of_joining() {
		return salary_at_the_time_of_joining;
	}
	public void setSalary_at_the_time_of_joining(int salary_at_the_time_of_joining) {
		this.salary_at_the_time_of_joining = salary_at_the_time_of_joining;
	}
	public String getPassport_no() {
		return passport_no;
	}
	public void setPassport_no(String passport_no) {
		this.passport_no = passport_no;
	}
	public String getPancard_no() {
		return pancard_no;
	}
	public void setPancard_no(String pancard_no) {
		this.pancard_no = pancard_no;
	}
	public String getpF_no() {
		return pF_no;
	}
	public void setpF_no(String pF_no) {
		this.pF_no = pF_no;
	}
	public String getOfficial_bank_name() {
		return official_bank_name;
	}
	public void setOfficial_bank_name(String official_bank_name) {
		this.official_bank_name = official_bank_name;
	}
	public int getOfficial_bank_account_no() {
		return official_bank_account_no;
	}
	public void setOfficial_bank_account_no(int official_bank_account_no) {
		this.official_bank_account_no = official_bank_account_no;
	}
	public String getEmployee_personal_bank_name() {
		return employee_personal_bank_name;
	}
	public void setEmployee_personal_bank_name(String employee_personal_bank_name) {
		this.employee_personal_bank_name = employee_personal_bank_name;
	}
	public int getPersonal_bank_account_no() {
		return personal_bank_account_no;
	}
	public void setPersonal_bank_account_no(int personal_bank_account_no) {
		this.personal_bank_account_no = personal_bank_account_no;
	}
	public String getBank_address() {
		return bank_address;
	}
	public void setBank_address(String bank_address) {
		this.bank_address = bank_address;
	}
	public String getiFSC_code() {
		return iFSC_code;
	}
	public void setiFSC_code(String iFSC_code) {
		this.iFSC_code = iFSC_code;
	}
	public int getIncrement_amount() {
		return increment_amount;
	}
	public void setIncrement_amount(int increment_amount) {
		this.increment_amount = increment_amount;
	}
	public int getIncrement_amount_date() {
		return increment_amount_date;
	}
	public void setIncrement_amount_date(int increment_amount_date) {
		this.increment_amount_date = increment_amount_date;
	}
	public int getTotal_leave_permissioned() {
		return total_leave_permissioned;
	}
	public void setTotal_leave_permissioned(int total_leave_permissioned) {
		this.total_leave_permissioned = total_leave_permissioned;
	}
	public int getTotal_leave_taken_from_jan_till_dec() {
		return total_leave_taken_from_jan_till_dec;
	}
	public void setTotal_leave_taken_from_jan_till_dec(int total_leave_taken_from_jan_till_dec) {
		this.total_leave_taken_from_jan_till_dec = total_leave_taken_from_jan_till_dec;
	}
	public int getTotal_leave_taken() {
		return total_leave_taken;
	}
	public void setTotal_leave_taken(int total_leave_taken) {
		this.total_leave_taken = total_leave_taken;
	}
	public String getAbsent() {
		return absent;
	}
	public void setAbsent(String absent) {
		this.absent = absent;
	}
	public int getTotal_yearly_leave_taken() {
		return total_yearly_leave_taken;
	}
	public void setTotal_yearly_leave_taken(int total_yearly_leave_taken) {
		this.total_yearly_leave_taken = total_yearly_leave_taken;
	}
	
	

}