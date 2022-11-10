import static org.junit.Assert.*;
import org.junit.*;
import java.util.*;


public class TestListExamples {
  // Write your grading tests here!
  @Test 
	public void filtertest() {
    List<String> input = new ArrayList<String>();
    input.add("shoes");
    input.add("Pants");
    input.add("shirt");
    StringChecker s = new StringChecker() {
        public boolean checkString(String a){
            return a.contains("s");
        }
    };
    List<String> ans = new ArrayList<String>();
    input.add("shoes");
    input.add("Pants");
    input.add("shirt");
    assertEquals(ans,ListExamples.filter(ans,s) );
	}
}
