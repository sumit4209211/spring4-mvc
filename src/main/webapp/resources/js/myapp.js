$("#btn-accept").click(function() {
  $("#myform").attr("action", "addPerson");
  $("#myform").submit();
});

$("#btn-reject").click(function() {
	  $("#myform").attr("action", "updatePerson");
	  $("#myform").submit();
});
