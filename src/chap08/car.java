package chap08;

public class car {
	private String name;
	private int speed;

	
	
	
//	stop (읽기전용 프로퍼티, 왜냐면 set메소드가 없음)
	public boolean getStop() { //읽기전용엔 isStop이라 메소드명 선언 가능
		return speed == 0;
	}
	
	// property명 : name
	public String getName() {
		return name;
	}
	
//	name
	public void setName(String name) {
		this.name = name;
	}
	
//	speed
	public int getSpeed() {
		return speed;
	}
	
//	speed 
	public void setSpeed(int spee) {
		this.speed = spee;
	}
	
	

}
