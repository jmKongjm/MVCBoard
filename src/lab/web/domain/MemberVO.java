package lab.web.domain;

public class MemberVO //멤버 테이블 구조를 추상화 한 클래스
{
private String userid;
private String password;
private String name;
private String email;
private String address;


public String getUserid() {
	return userid;
}
public void setUserid(String userid) {
	this.userid = userid;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}

@Override
public String toString()
{
	return "[name = " + name + ", id = " +
userid + ", password =" + password
+ ", email =" + email + ", address =" + address + "]";

}
}