package form;

import org.apache.struts.action.ActionForm;

public class DesignationForm extends ActionForm
{
String designation;
String type;
public String getDesignation() {
	return designation;
}
public void setDesignation(String designation) {
	this.designation = designation;
}
public String getType() {
	return type;
}
public void setType(String type) {
	this.type = type;
}



}
