// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(function() {
  // $('#send_question').click(function(e) {
  //   e.preventDefault();
  //   var questionText=document.getElementById('question_text').value;
  //   var teacherEmail = "<%teacher = Teacher.find_by(id: session[:teacher_id])%><%=teacher.email%>";
  //   alert(teacherEmail);

  //   $.ajax({

  //     type: "POST",
  //     url: "https://mandrillapp.com/api/1.0/messages/send.json",
  //     data: {
  //       'key': '6_8SWEh4pIoJBixODvpwwg',

  //       'message': {
  //         'from_email': 'jww335@gmail.com',
  //         'from_name' : 'Teacher',
  //         'subject': "Today's Question",
  //         'text': questionText,
  //         'to': [
  //           {
  //             'email': 'jww335@yahoo.com',
  //             'name': 'John',
  //             'type': 'to'
  //           }
  //         ],
  //       }
  //     }


  // }).done(function(response){
  //   console.log(response[0]);
  // });
  //   // alert("send email")
  // });


});




