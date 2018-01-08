package form;

import org.apache.struts.action.ActionForm;

public class QualificationForm extends ActionForm
{
String qualification;
String type;
public String getQualification() {
	return qualification;
}
public void setQualification(String qualification) {
	this.qualification = qualification;
}
public String getType() {
	return type;
}
public void setType(String type) {
	this.type = type;
}


}
