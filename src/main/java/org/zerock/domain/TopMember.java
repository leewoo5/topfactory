package org.zerock.domain;

public class TopMember {
	//이름
	String name;
	//나이
	String age;
	//성별
	String gender;
	//학번
	String studentNum;
	//학과
	String department;
	//거주지
	String address;
	//근무지
	String job;
	//기수
	String stage;
	//수상실적
	String prize;
	//연락처
	String phone;
	//직책
	String position;
	//이메일
	String email;

	
	@Override
	public String toString() {
		return "TopMember [name=" + name + ", age=" + age + ", gender=" + gender + ", studentNum=" + studentNum
				+ ", department=" + department + ", address=" + address + ", job=" + job + ", stage=" + stage
				+ ", prize=" + prize + ", phone=" + phone + ", position=" + position + ", email=" + email + "]";
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getAge() {
		return age;
	}


	public void setAge(String age) {
		this.age = age;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}


	public String getStudentNum() {
		return studentNum;
	}


	public void setStudentNum(String studentNum) {
		this.studentNum = studentNum;
	}


	public String getDepartment() {
		return department;
	}


	public void setDepartment(String department) {
		this.department = department;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getJob() {
		return job;
	}


	public void setJob(String job) {
		this.job = job;
	}


	public String getStage() {
		return stage;
	}


	public void setStage(String stage) {
		this.stage = stage;
	}


	public String getPrize() {
		return prize;
	}
	


	public void setPrize(String prize) {
		this.prize = prize;
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public String getPosition() {
		return position;
	}


	public void setPosition(String position) {
		this.position = position;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}
	
}
