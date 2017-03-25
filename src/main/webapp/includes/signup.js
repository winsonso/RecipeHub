<script>
    
$(function() {
// Get the form.
        var form = $('#modalForm');
// Get the messages div.
        var formMessages = $('#modalAlert');
      
        console.log("working!");
// Set up an event listener for the contact form
        $(form).submit(function(event) {
// Stop the browser from submitting the form.
event.preventDefault();
        //if passwords match, execute ajax call.
        if ($('#newPassword').val() === $('#confirmPassword').val()){

                // Serialize the form data.
                var formData = $(form).serialize();
                // Submit the form using AJAX.
                        $.ajax({
                        type: 'POST',
                                url: $(form).attr('action'),
                                data: formData
                })
                .done(function(response) {
                // Set the message text.
                                $(formMessages).text(response);
                                if (response == "User Created Successfully!"){
                                    $(formMessages).addClass("alert alert-success");
                                }
                                else {
                                    $(formMessages).addClass("alert alert-danger");
                                }
                               
                // Clear the form.
                                $('#signupFirstName').val('');
                                $('#signupLastName').val('');
                                $('#signupEmail').val('');
                                $('#signupUsername').val('');
                                $('#newPassword').val('');
                                $('#confirmPassword').val('');
                })
    }   
    else {
    $(formMessages).addClass("alert alert-danger");
    $(formMessages).text("Passwords Don't Match!")
    
    }
    
});



});


      
</script>