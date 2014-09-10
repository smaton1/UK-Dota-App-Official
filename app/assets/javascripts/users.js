$(function(){
  $("#add_friend").on("click", function(){

    data = {user_1_id: 1, connection_id: 2, 'friend': true}
    path = "/user_connections"
    method = "POST"

    $.ajax({
    url: path,
    method: method,
    data: data,
    dataType: "json"
    }).success(function(data){  
        console.log(data)
        if(data){
          console.log("hi")
        }
  })

  });

  $("#show_friends_list").on("click", function(){
    $('#profile_page').hide();
    $('#friends_list').toggleClass();
  })
  $("#show_profile").on("click", function(){
    $('#profile_page').show();
    $('#friends_list').toggleClass();
  })
})