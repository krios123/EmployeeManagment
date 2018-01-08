package form;

import org.apache.struts.action.ActionForm;

public class TeamForm extends ActionForm{

	String team;
	String type;
	public String getTeam() {
		return team;
	}
	public void setTeam(String team) {
		this.team = team;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
	
}
