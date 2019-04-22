<cook>

  <head>
    <meta charset="utf-8">

    <title>TITLE</title>

    <link rel="stylesheet" href="/css/styles.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
  </head>

  <body class="no-margin">
      <nav class="row centered">
          <div class="logo">
              <img style="margin-top:20px;width:30%;" src="assets/logo.png"/>
          </div>
          <div class="links row vertically-centered">
              <a class="row vertically-centered" href="#">SWITCH</a>
              <a class="row vertically-centered" href="#">COOK</a>
              <a class="row vertically-centered" href="#">EXPLORE</a>
              <a class="row vertically-centered" href="#">INSPIRE</a>
              <a class="row vertically-centered" href="#">LAUGH</a>
          </div>
          <div style="margin-top:20px;" show={ !user } class="button call-to-action rounded green" onclick={ login }>Join the Community</div>
          <div style="margin-top:20px;" show={ user } class="button call-to-action rounded green" onclick={ logout }>Logout</div>
          <div style="margin-top:20px;" class="button">
              <i class="material-icons">
                  shopping_cart
              </i>
          </div>
      </nav>
      <div class="header">
          <div class="home bg row centered">
              <div class="overlay column centered">
                  <h1>Mouthwatering meals are just a click away</h1>
                  <div class="play button">
                      <i class="material-icons">
                          play_arrow
                      </i>
                  </div>
              </div>
          </div>
      </div>

      <div class="section column centered">
          <h1>Magnificent Meals</h1>
          <p>Wondering what to eat? Here are some easy, familiar meal ideas for breakfast, lunch, and dinner.</p>
      </div>


      <div class="section column centered">
          <h1>Breakfast</h1>
          <div class="carousel row centered" id="carousel-switch-1">
              <div class="left arrow row centered" onclick="changeSlide1(-1)">
                  <i class="material-icons">
                      keyboard_arrow_left
                  </i>
              </div>
              <div class="content">
                  <img src="https://via.placeholder.com/320x250" />
                  <h3>Name of Dish</h3>
                  <p>short writeup about it</p>
              </div>
              <div class="content">
                  <img src="https://via.placeholder.com/320x250" />
                  <h3></h3>
                  <p></p>
              </div>
              <div class="content">
                  <img src="https://via.placeholder.com/320x250" />
                  <h3></h3>
                  <p></p>
              </div>
              <div class="right arrow row centered" onclick="changeSlide1(1)">
                  <i class="material-icons">
                      keyboard_arrow_right
                  </i>
              </div>
          </div>
      </div>

      <div class="section column centered">
          <h1>Lunch</h1>
          <div class="carousel row centered" id="carousel-switch-2">
              <div class="left arrow row centered" onclick="changeSlide1(-1)">
                  <i class="material-icons">
                      keyboard_arrow_left
                  </i>
              </div>
              <div class="content">
                  <img src="https://via.placeholder.com/320x250" />
                  <h3>Name of Dish</h3>
                  <p>short writeup about it</p>
              </div>
              <div class="content">
                  <img src="https://via.placeholder.com/320x250" />
                  <h3></h3>
                  <p></p>
              </div>
              <div class="content">
                  <img src="https://via.placeholder.com/320x250" />
                  <h3></h3>
                  <p></p>
              </div>
              <div class="right arrow row centered" onclick="changeSlide1(1)">
                  <i class="material-icons">
                      keyboard_arrow_right
                  </i>
              </div>
          </div>
      </div>

      <div class="section column centered">
          <h1>Dinner</h1>
          <div class="carousel row centered" id="carousel-switch-3">
              <div class="left arrow row centered" onclick="changeSlide1(-1)">
                  <i class="material-icons">
                      keyboard_arrow_left
                  </i>
              </div>
              <div class="content">
                  <img src="https://via.placeholder.com/320x250" />
                  <h3>Name of Dish</h3>
                  <p>short writeup about it</p>
              </div>
              <div class="content">
                  <img src="https://via.placeholder.com/320x250" />
                  <h3></h3>
                  <p></p>
              </div>
              <div class="content">
                  <img src="https://via.placeholder.com/320x250" />
                  <h3></h3>
                  <p></p>
              </div>
              <div class="right arrow row centered" onclick="changeSlide1(1)">
                  <i class="material-icons">
                      keyboard_arrow_right
                  </i>
              </div>
          </div>
      </div>

      <div class="section row vertically-centered space-around off-white-bg full-width no-margin">
          <div class="left column">
              <h1>It Just Got Easier</h1>
              <h4>Planning your supermarketing has never been easier. Write down what you need to buy so it's ready for your next trip to the grocers! </h4>
              <div class="button green">Create your grocery list</div>
          </div>
          <div class="right row centered">
              <img src="https://via.placeholder.com/500x300" />
          </div>
      </div>


      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
      <script src="js/switch-carousel-1.js"></script>
      <script src="js/switch-carousel-2.js"></script>
  </body>

  <script>
    //login
    login() {
      var provider = new firebase.auth.GoogleAuthProvider();
      firebase.auth().signInWithPopup(provider);
    };
    //logout
    logout() {
      firebase.auth().signOut();
    };
    //change view of buttons
    firebase.auth().onAuthStateChanged(userObj => {
      if (userObj) {
        this.user = userObj;
      } else {
        this.user = null;
      }
      this.update();
    });

  </script>


</cook>