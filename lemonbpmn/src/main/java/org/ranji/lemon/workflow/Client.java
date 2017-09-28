package org.ranji.lemon.workflow;

//-- 1. 开关（事件源）被观察者
class Switch{
	private SwitchListener listener;
	
	//-- 建立关系
	public void regsiterListener(SwitchListener listener){
		this.listener = listener;
	}
	
	public void open(){
		SwitchEvent openEvent = new SwitchEvent(this,"open");
		notifyListener(openEvent);
	}
	public void close(){
		notifyListener(new SwitchEvent(this,"close"));
	}
	
	//-- 通知监听器来处理它发出的事件
	private void notifyListener(SwitchEvent event){
		this.listener.handleEvent(event);
	}
}

//-- 2. 观察者（监听器）
interface SwitchListener{
	public void handleEvent(SwitchEvent event);
}

//-- 3. 事件（可发出的事件）
class SwitchEvent{
	private Switch source;
	private String switchState;
	
	public SwitchEvent(Switch source, String switchState){
		this.source = source;
		this.switchState = switchState;
	}

	public Switch getSource() {
		return source;
	}

	public void setSource(Switch source) {
		this.source = source;
	}

	public String getSwitchState() {
		return switchState;
	}

	public void setSwitchState(String switchState) {
		this.switchState = switchState;
	}
	
}

class HandleSwitchOpenEvent implements SwitchListener{

	@Override
	public void handleEvent(SwitchEvent event) {
		
	}
	
}
class HandleSwitchCloseEvent{
	
}

public class Client {
	public static void main(String[] args) {
		//-- 1. 创建个被观察者
		Switch s = new Switch();
		
		//-- 2. 给被观察者注册监听器
		s.regsiterListener(new SwitchListener(){
			public void handleEvent(SwitchEvent event){
				if(event.getSwitchState().equals("open"))
					new HandleSwitchOpenEvent().handleEvent(event);
				else if(event.getSwitchState().equals("close"))
					System.out.println("switch is closed!");
			}
		});
		
		//-- 3. 被观察者发触发事件
		//s.close();
		s.open();
	}
}
