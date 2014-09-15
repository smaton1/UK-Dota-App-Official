var railsChat = railsChat || {};

railsChat.fields = ["username", "other_user", "message"]

railsChat.getNotes = function(){
  $("#tbody").html("")
  $.getJSON("/chats", function(data){
    $.each(data, function(i, chat){
      if(chat.user_1_id == $('#current_user').val()){
        if(chat.user_2_id == $('#this_user').val()){
          var row = $("<tr>"+
            "<td>"+ $("#current_user_name").val() + "</td>"+
            "<td>"+ chat.message +"</td></tr>")
          row.appendTo("#tbody")}
      }else if(chat.user_1_id == $('#this_user').val()){
        if(chat.user_2_id == $('#current_user').val()){
          var row = $("<tr>"+
            "<td>"+ $("#this_user_name").val() +"</td>"+
            "<td>"+ chat.message +"</td></tr>")
          row.appendTo("#tbody")}
      }
    })
  })
}

railsChat.postNote = function(event){
  event.preventDefault();
  $.ajax({
    url: "/chats",
    method: "POST",
    data: {chat: {'user_1_id': $('#current_user').val(), 'user_2_id': $('#this_user').val(), 'message': $('#message').val()}},
    dataType: "json"
  }).success(function(){railsChat.getNotes()
  })
}

$(function(){
  railsChat.getNotes()
  $("#new_note").on("submit", railsChat.postNote)
});





