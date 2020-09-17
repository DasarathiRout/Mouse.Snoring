// Mouse Movement Simulation: MMS MouseSnoring 
import java.awt.MouseInfo; 
import java.awt.Point; 
import java.awt.Robot; 
// START.CLASS 
public class MMS { 
   public static void main(String[] arrays) throws Exception { 
       Robot energy = new Robot(); 
       while (true) { 
           //System.out.println(); 
           energy.delay(1000 * 60); 
           Point pointOne = MouseInfo.getPointerInfo().getLocation(); 
           Point pointTwo = pointOne; 
           energy.mouseMove(pointOne.x + 1, pointOne.y + 1); 
           energy.mouseMove(pointOne.x - 1, pointOne.y - 1); 
           energy.mouseMove(pointTwo.x, pointOne.y); 
           //System.out.printf("MMS.MouseSnoring(d)",pointOne.x,pointOne.y); 
           pointOne = MouseInfo.getPointerInfo().getLocation(); 
           System.gc(); 
       } 
   } 
} 
// END.CLASS 
