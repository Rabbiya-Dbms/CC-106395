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





//js email regrex

function isValidEmail(email) {
  const re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
  return re.test(String(email).toLowerCase());
}



//email regrex javascript
/* Answer to: "email regex javascript" */

ValidateEmail("icecream123@yahoo.com"); // Must be a string

function ValidateEmail(email) {
	var emailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(String(email).toLowerCase());
	if (email.match(emailformat)) {
    	alert("Nice Email!")
      	return true;
    };
    alert("That's not an email?!")
    return (false);
};
