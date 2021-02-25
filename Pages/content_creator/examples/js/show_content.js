(function ($) {

		function embedForm(url, values, i){
      $.ajax({
             type: "POST",
             url: url,
             data: values, // serializes the form's elements.
             success: function(data)
             {
              var formContainer = $("[data-form-short-code] div:nth-child("+String(i) +") form");
              var x = formContainer.html();
              formContainer.html(data+x); // show response from the php script.
             }
      });
    }


})(jQuery);
