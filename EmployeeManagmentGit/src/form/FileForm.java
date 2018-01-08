package form;

import org.apache.struts.action.ActionForm;

public class FileForm  extends ActionForm{
	String file;
	String filename;
	public String getFile() {
		return file;
	}
	public void setFile(String file) {
		this.file = file;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	

}
