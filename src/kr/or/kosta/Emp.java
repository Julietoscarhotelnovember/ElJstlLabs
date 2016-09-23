package kr.or.kosta;

//Data Transfer Object, Value Object
//값을 담아서 이용하는 클래스
//MVC에서의 개념
//DB의 테이블과 1:1매칭되는 클래스
public class Emp {
	private int empno;
	private String ename;
	
	public int getEmpno() {
		return empno;
	}
	public void setEmpno(int empno) {
		this.empno = empno;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public Emp(int empno, String ename) {
		this.empno = empno;
		this.ename = ename;
	}
	
}
