Feature: Validating Place API's
@AddPlace @Regression
	Scenario Outline: Verify if place is being succesfully added using AddPalceAPI 

	 Given Add Place Payload with "<name>" "<language>" "<address>"
	 When user calls "AddPlaceAPI" with "Post" http request 
	 Then the API call got success with status code 200
	 And "status" in response body is "OK"
	 And verify place_ID created maps to "<name>" using "getPlaceAPI" 
	 

Examples:

    |name    | language | address |
    |AAhouse |	English | Centre  |  
  #  |BBhouse | Spanish  | Middle  |
  @DeletePlace @Regression
  Scenario: Verify if Delete Place functionality is working 
  
  
    Given DeletePlace Payload 
  	When user calls "deletePlaceAPI" with "POST" http request 
    Then the API call got success with status code 200
	And "status" in response body is "OK"
    