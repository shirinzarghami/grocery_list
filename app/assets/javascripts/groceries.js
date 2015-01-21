(function() {


  $(function(){
    $('.bought_check').change(function (){
      $.ajax({
        type: "POST",
        url: $(this).closest('form').attr('action'),
        data: $($(this).closest('form')).serialize(), // serializes the form's elements.
        success: function(data)
        {
          console.log(data); // show response from the php script.
        },
        error: function(data)
        {
          alert('Could not update');
        }
      });

        return false;
  });
});
}).call(this);
