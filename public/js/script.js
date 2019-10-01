// Declare the custom selector 'containsIgnoreCase' for jquery - handy for filters
$.expr[':'].containsIgnoreCase = function (n, i, m) {
    return jQuery(n).text().toUpperCase().indexOf(m[3].toUpperCase()) >= 0;
};

function delay_method(label, callback) {
    if (typeof window.delayed_methods == "undefined") {
        window.delayed_methods = {};
    }
    delayed_methods[label] = Date.now();
    var t = delayed_methods[label];
    setTimeout(function () {
        if (delayed_methods[label] != t) {
            return;
        } else {
            callback();
        }
    }, 500);
}
// DOM ready
$(function () {
    // Example starter JavaScript for disabling form submissions if there are invalid fields
    window.addEventListener('load', function() {
      // Fetch all the forms we want to apply custom Bootstrap validation styles to
      var forms = document.getElementsByClassName('needs-validation');
      // Loop over them and prevent submission
      var validation = Array.prototype.filter.call(forms, function(form) {
        form.addEventListener('submit', function(event) {
          if (form.checkValidity() === false) {
            event.preventDefault();
            event.stopPropagation();
          }
          form.classList.add('was-validated');
        }, false);
      });
    }, false);

});


function onLoad() {
    // gapi.load('auth2', function() {
    //   //gapi.auth2.init();
    // });
  }

function onSignIn(googleUser) {
    var profile = googleUser.getBasicProfile();
    var auth2 = gapi.auth2.getAuthInstance();
    googleUser.disconnect()
    auth2.disconnect();
    $.ajax({
        type: 'post',
        url: `${BASE_URL}login/on-google-sign-in-ajax`,
        data: {
            name: profile.getName(),
            email: profile.getEmail(),
        },
        success: (response) => {
            if(response === 'reload') {            
                location.reload();
            }            
        },
        failure: () => {
            console.log('Error processing login data')
        },
    });
    // console.log('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
    // console.log('Name: ' + profile.getName());
    // console.log('Image URL: ' + profile.getImageUrl());
    // console.log('Email: ' + profile.getEmail()); // This is null if the 'email' scope is not present.
}

function signOut() {
    var auth2 = gapi.auth2.getAuthInstance();
    auth2.signOut().then(function () {
        $.ajax({
            type: 'post',
            url: `${BASE_URL}login/on-google-sign-out-ajax`,
            data: {},
            success: (response) => {
                location.reload();                    
                console.log('User signed out.');
            },
            failure: () => {
                console.log('Error processing login data')
            },
        }); 
    });
}
