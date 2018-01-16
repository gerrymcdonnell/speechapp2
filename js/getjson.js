//define the angular js module (modulename)
var app1=angular.module('app1',[]);

app1.controller('mainCtrl',function($scope,$http){ 
    
    //as soon as app starts call get words
    _refreshWords();
	
	//function to get from database via php sql json
	/*function getWords(){
		// Sending request to EmpDetails.php files 
		$http.post('databaseFiles/wordDetails.php').success(function(data){
		// Stored the returned data into scope 
		$scope.words = data;
		});
	}*/	
	

	
	//build auth header string
	/*
		username="gerry";
		password="ted";
		// Define the string
		var string = username + ":" + password;
		// Encode the String
		var encodedString = btoa(string);
	
		base64 encode the username and password
	*/
	function _buildHttpBasicAuthString(username,password){
		return 	 btoa(username + ":" + password);
	}

	//get a list of words from "backend" webapp which provides a REST Service
	function _refreshWords() {
		var jsonUrl = "http://localhost/cake3restapi/words/index.json";

		var encodedString=_buildHttpBasicAuthString("gerry","ted");

		$http(
			{
				method : 'GET',
				url : jsonUrl,
				headers: { 'Authorization': 'Basic ' + encodedString}
			}
	).then(function successCallback(response) {
			$scope.words = response.data;
		}, function errorCallback(response) {
			console.log(response.statusText);
		});
	}
	
    
	//add new word via a REST request
	/*
	read https://book.cakephp.org/3.0/en/development/routing.html#resource-routes
	*/
	$scope.addWord = function(info){
		
		console.log("insertInfo");
		
		var jsonUrl = "http://localhost/cake3restapi/words.json";
		var encodedString=_buildHttpBasicAuthString("gerry","ted");

		$http(
			{
				method : 'POST',
				data:{"word":info.word, "word_syllables":info.word_syllables},
				url : jsonUrl,
				headers: { 'Authorization': 'Basic ' + encodedString}
			}		
		)
		.success(function(data){
			
			console.log(data.message);
			
			_refreshWords();				
			$('#addWordForm').css('display', 'none');
			
		}		
		);
	}
	
	
	//*****************************************************************************
	//delete record works
	//*****************************************************************************
	$scope.deleteWord = function(info){
		
		console.log("deleteInfo");
		
		var jsonUrl = "http://localhost/cake3restapi/words/"+info.id+".json";
		var encodedString=_buildHttpBasicAuthString("gerry","ted");		
		
		//and auth login details
		$http(
			{
				method : 'DELETE',
				url : jsonUrl,
				headers: { 'Authorization': 'Basic ' + encodedString}
			}		
		).success(function(data){
			
			console.log(data.message);
			
			_refreshWords();				
			$('#addWordForm').css('display', 'none');
			
		}
		
		);
	}
	

	//send a put request to a url	
	$scope.UpdateWord = function(info){
		
		var jsonUrl = "http://localhost/cake3restapi/words/"+info.id+".json";
		var encodedString=_buildHttpBasicAuthString("gerry","ted");	
		
		console.log(jsonUrl);

		$http(
			{
				method : 'PUT',
				data:{"id":info.id,"word":info.word, "word_syllables":info.word_syllables},
				url : jsonUrl,
				headers: { 'Authorization': 'Basic ' + encodedString}
			}		
		)		
		.success(function(data){
				$scope.show_form = true;
				if (data == true) {
					console.log("data="+data);
					_refreshWords();
				}
		});
    }




	

	
	
		//*****************************************************************************
		//from crud example
		//*****************************************************************************
		
		// Enabling show_form variable to enable Add employee button
		$scope.show_form = true;		
		$scope.currentWord = {};

		//shows the edit form
		$scope.editInfo = function(info){
            $scope.currentWord = info;
            $('#addWordForm').slideUp();
            $('#editWordForm').slideToggle();
        }
        


        $scope.updateMsg = function(id){
            $('#editWordForm').css('display', 'none');
        }		
		
		

		
		
		$scope.formToggle =function(){
			$('#addWordForm').slideToggle();
			$('#editWordForm').css('display', 'none');
		}
		
		

				
		
		



 });

