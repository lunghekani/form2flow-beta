(function ($) {

  window.populateForm = function(formId, formValues){
    for (var i = 0; i < formValues.length; i++) {
      $(formId+" [name = '"+formValues[i].name + "']").val(formValues[i].value);
    }
  }

  var file_name = "";

  window.insertForm = function(){
    var url = "php/insert_form_data.php"; //insert_form_data.php
    var formData = new FormData();
    var uploadDir = "uploads/" //localhost/uploads/

    file = $("[data-setting-type='photo'] form input[type='file']");
    if (file[0]) {
      file = file[0].files[0];
      filename = file.name;
      newName = new Date().valueOf() + "." +filename.split(".")[1];

      var blob = file.slice(0, file.size, 'image/png'); 
      newFile = new File([blob], newName, {type: 'image/png'});
      
      $("#formHTML [src]").each(function(){
        filePath = uploadDir + newFile.name;
        existingPath = $(this).attr("src");
        if(existingPath.startsWith("data:image/png;")) {
          $(this).attr("src", filePath);
        }
      });
      formData.append('fileToUpload', newFile);
    }
    
    $form_html = $("#formHTML").html();

    file_name = prompt("Please enter the file name", file_name); 

    if (file_name != null) {
      formData.append('html_content', JSON.stringify($form_html));
      formData.append('file_name', file_name);

      $.ajax({
         type: "POST",
         url: url,
         data: formData,
         processData: false,  
         contentType: false,
         success: function(data)
         {
            alert(data);
            return data;
         }
       });
    }

    
    
  }

  window.embedForm =function(url, values, i){

    $.ajax({
           type: "POST",
           url: url,
           data: values, // serializes the form's elements.
           success: function(data)
           {
            var formContainer = $("[data-form-short-code] div:nth-child("+String(i) +") form");
            var x = formContainer.html();
            formContainer.html(data+x); // show response from the php script.
            $("[data-form-short-code] div:nth-child("+String(i) +") form [id]").removeAttr('id');
            populateForm("#myForm"+ String(i), formDataArr[i-1]);
           }
    });
  }


	$(document.body).on("click", "a.keditor-ui.keditor-topbar-btn[title*='Save']", function(){
		$keditor_content = $('#content-area').keditor('getContent')

    $("#formHTML").html($keditor_content);

    // <Refactoring the form_html>
    $("#formHTML .form-data").remove();
    
    // </Refactoring the form_html>
    

    insertForm();

  });


})(jQuery);
