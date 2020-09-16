package stepDefinations;

import java.io.IOException;

import io.cucumber.java.Before;

public class Hooks {
	
	@Before("@DeletePlace")
	
	public static void beforeScenario() throws IOException{
		
		//code give you placeid
		//run only if place id is null
		
		StepDefination m = new StepDefination ();
		
		if(StepDefination.place_id == null) {
			
		
		m.add_Place_Payload_with("Rai", "Eng", "Asia");
		m.user_calls_with_http_request("AddPlaceAPI", "POST");
		m.verify_place_ID_created_maps_to_using("Rai", "getPlaceAPI");
	}
	}

}
