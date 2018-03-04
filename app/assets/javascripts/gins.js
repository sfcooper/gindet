$(document).on("turbolinks:load", function() {
  var selectizeCallback = null;

  $(".botanical-modal").on("hide.bs.modal", function(e) {
    if (selectizeCallback != null) {
      selectizeCallback();
      selecitzeCallback = null;
    }

    $("#new_botanical").trigger("reset");
    $.rails.enableFormElements($("#new_botanical"));
  });

  $("#new_botanical").on("submit", function(e) {
    e.preventDefault();
    $.ajax({
      method: "POST",
      url: $(this).attr("action"),
      data: $(this).serialize(),
      success: function(response) {
        selectizeCallback({value: response.id, text: response.name});
        selectizeCallback = null;

        $(".botanical-modal").modal('toggle');
      }
    });
  });

  $(".selectize").selectize({
    create: function(input, callback) {
      selectizeCallback = callback;

      $(".botanical-modal").modal();
      $("#botanical_name").val(input);
    }
  });
});
