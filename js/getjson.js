//define the angular js module (modulename)
var app14=angular.module('app14',[]);

app14.controller('mainCtrl',function($scope,$http){ 
    
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
	

    //get words from json service
	/*function _refreshWords(){
        var jsonUrl = "http://localhost/cake3restapi/words/index.json";
        $http.get(jsonUrl).success(
            function(data){
              console.log(data);
              $scope.words = data;
            }
          );
    }*/
	
	
	
	function _refreshWords() {
		var jsonUrl = "http://localhost/cake3restapi/words/index.json";
		$http({
			method : 'GET',
			url : jsonUrl
		}).then(function successCallback(response) {
			$scope.words = response.data;
		}, function errorCallback(response) {
			console.log(response.statusText);
		});
	}
	
    
	//add new word via a REST request
	/*
	read https://book.cakephp.org/3.0/en/development/routing.html#resource-routes
	*/
	
	/*****************************************************************************
	works must have a user id
	//*****************************************************************************
	*/
	$scope.insertInfo = function(info){
		
		console.log("insertInfo");
		
		var jsonUrl = "http://localhost/cake3restapi/words.json";
		$http.post(jsonUrl,
		{
			"word":info.word,
			"word_syllables":info.word_syllables
		}).success(function(data){
			
			console.log(data.message);
			
			_refreshWords();				
			$('#addWordForm').css('display', 'none');
			
		}
		
		);
	}
	
	
	//*****************************************************************************
	//delete record works
	//*****************************************************************************
	$scope.deleteInfo = function(info){
		
		console.log("deleteInfo");
		
		var jsonUrl = "http://localhost/cake3restapi/words/"+info.id+".json";
		
		console.log(jsonUrl);
		
		$http.delete(jsonUrl,
		{
			/*"word":info.word,
			"word_syllables":info.word_syllables*/
		}).success(function(data){
			
			console.log(data.message);
			
			_refreshWords();				
			$('#addWordForm').css('display', 'none');
			
		}
		
		);
	}
	
	
	$scope.UpdateWord = function(info){
		
		var jsonUrl = "http://localhost/cake3restapi/words/"+info.id+".json";
		
		$http.put(jsonUrl,
			{
			"id":info.id,
			"word":info.word
			}
			).success(function(data){
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
		$scope.editInfo = function(info){
            $scope.currentWord = info;
            $('#addWordForm').slideUp();
            $('#editWordForm').slideToggle();
        }
        
        /**
         * post to the script that wukk process the data we posted
         */
        /*$scope.UpdateWord = function(info){
            $http.post('databaseFiles/updateWords.php',
                {
                "id":info.id,
                "word":info.word
                }
                ).success(function(data){
                    $scope.show_form = true;
                    if (data == true) {
                        console.log("data="+data);
						_refreshWords();
                    }
            });
        }*/

        $scope.updateMsg = function(id){
            $('#editWordForm').css('display', 'none');
        }		
		
		
		/*$scope.insertInfo = function(info){
		$http.post('databaseFiles/insertWord.php',
		{
			"word":info.word,
			"word_syllables":info.word_syllables
		}).success(function(data){
		if (data == true) {
			_refreshWords();
			$('#addWordForm').css('display', 'none');
		}
		});
		}*/
		
		
		$scope.formToggle =function(){
			$('#addWordForm').slideToggle();
			$('#editWordForm').css('display', 'none');
		}
		
		
		/*$scope.deleteInfo = function(info){
		$http.post('databaseFiles/deleteWord.php',{"del_id":info.id}).success(function(data){
		if (data == true) {
			_refreshWords();
		}
		});
		}*/
				
		
		



 });

