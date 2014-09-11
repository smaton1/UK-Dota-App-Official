$(function(){
  $("#add_friend").on("click", function(){
    data = {user_connection: {user_1_id: parseInt($('#hidden_current_user_id').val()), user_2_id: parseInt($('#hidden_user_id').val()), 'friend': true}}
    path = "/user_connections"
    method = "POST"
    console.log(data)
    $.ajax({
    url: path,
    method: method,
    data: data,
    dataType: "json",
    });
 

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