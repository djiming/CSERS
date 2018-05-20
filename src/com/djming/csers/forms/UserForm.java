package com.djming.csers.forms;
/*
 * @author  djming
 * @date 创建时间：2018年4月11日 下午2:46:28
 * @throws
 * 用户表单类
 */
public class UserForm {
	
	//private String Id;
	private String ExamNumber;
	private String IdNumber;  
    private String password;
    private String question;
    private String answer;
    private String gender;
    private String number;
    private String province;
    private String city;
    private String education;
    private String image;
    private String positionName;
    private String name;
    private String birthdata;
    
   public String getExamNumber() {
		return ExamNumber;
	}

	public void setExamNumber(String examNumber) {
		ExamNumber = examNumber;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getEducation() {
		return education;
	}

	public void setEducation(String education) {
		this.education = education;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getPositionName() {
		return positionName;
	}

	public void setPositionName(String positionName) {
		this.positionName = positionName;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBirthdata() {
		return birthdata;
	}

	public void setBirthdata(String birthdata) {
		this.birthdata = birthdata;
	}

	/* public String getId() {  
        return Id;
    }  
  
    public void setid(String Id) {  
        this.Id = Id;  
    }  
 */
    public String getIdNumber() {  
        return IdNumber;
    }  
  
    public void setIdNumber(String IdNumber) {  
        this.IdNumber = IdNumber;  
    }  
  
    public String getPassword() {  
        return password;  
    }  
  
    public void setPassword(String password) {  
        this.password = password;  
    }  

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}  

}
