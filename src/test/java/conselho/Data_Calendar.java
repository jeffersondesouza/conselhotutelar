package conselho;

import java.time.LocalDateTime;
import java.util.Calendar;
import java.util.Locale;

import org.junit.Test;

public class Data_Calendar {
	
	@Test
	public void testaCalendario(){
		
		
		Calendar c = Calendar.getInstance(new Locale("pt","BR"));
		
		System.out.println("Data e Hora atual: "+c.getTime());
	}
	
	@Test
	public void testaCalendario2(){
		LocalDateTime c = LocalDateTime.now();
		
		System.out.println("Data e Hora atual com local: "+c);
		
		
	}

}
