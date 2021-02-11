function emailValid(input) {

  var re = /^[a-zA-Z.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-1-]+(?:\.[a-zA-Z0-1-]+)*$/;

  if (input.value.match(re)) {

    alert("Valid Email");

    document.form1.text1.focus();

    return true;

  } else {

    alert("Invalid Email");

    document.form1.text1.focus();

    return false;

  }

}