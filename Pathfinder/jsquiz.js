(function() {
    $.ajaxSetup({ cache: false });
    var questions = [{
    question: "Do you prefer practical or theoretical courses?",
    choices: ["Practical", "Theoretical"],
    //correctAnswer: 2
  }, {
    question: "Do you have a lot of fantasy or are you more a realistic person?",
    choices: ["Realistic", "Fantasy"],
    //correctAnswer: 4
  }, {
    question: "How often do you experience problems with bumping into things, losing stuff or other unimportant problems related to physical awareness?",
    choices: ["Sometimes", "Quite often"],
    //correctAnswer: 0
  }, {
    question: "Which of the following best describes you when it comes to making decisions?",
    choices: ["I often make snap decisions and rarely think them through.", "I am less likely to make rash decisions and would rely heavily on my intuition, feeling and reactions in making a decision."],
    //correctAnswer: 3
  }, {
    question: "Which of the following best describes you during a group discussion or group decision making?",
    choices: ["I tend to prefer quiet solitude, time to think before speaking (or acting), and building relationships and trust one-on-one.", "I gravitate toward groups and constant action, and I tend to think out loud and mostly vocal with my opinions."],
    //correctAnswer: 4
  }, {
      question: "I mostly enjoy,",
      choices: ["Doing whatever I feel doing at that moment and don’t dwell on the consequences.", "Reflection and deep dives into my own inner landscape to research ideas, and I tend to focus deeply on work."],
  }, {
      question: "Do you like to volunteer or involve yourself in new activities offered by your workplace?",
      choices: ["Yes, I love to volunteer!", "If there is someone else who can do it, I do not see why I should."],
  }, {
      question: "Which of the following best describes you?",
      choices: ["I often involve myself in those group chats my co-workers set up, even if its just for the sake of making jokes with my co-workers.", "I rarely reply to the group chats unless very necessary."],
  }, {
      question: "Before I start the day at work, I tend to..",
      choices: ["Rather meet with people and start the day off running. I am more productive when I can bounce ideas off others during the workday.", "Ease into the workday by sorting and planning alone for the first half an hour."],
  }, {
      question: "If you are walking on a crowded street, which one do you tend to do?",
      choices: ["Paying attention to your phone as you walk.", "Walk casually and look at your surroundings."]
  }, {
      question: "Which one best describes yourself when you are in a large gathering or party?",
      choices: ["Make your own space for yourself.", "Talk to someone around you."]
  }, {
      question: "You will work effectively when ...",
      choices: ["You are in a quiet environment.", "You are in a space full of people / noise."]
  }];

  var questionCounter = 0; //Tracks question number
  var selections = []; //Array containing user choices
  var quiz = $('#quiz'); //Quiz div object

  // Display initial question
  displayNext();

  // Click handler for the 'next' button
  $('#next').on('click', function (e) {
    e.preventDefault();

    // Suspend click listener during fade animation
    if(quiz.is(':animated')) {
      return false;
    }
    choose();

    // If no user selection, progress is stopped
    if (isNaN(selections[questionCounter])) {
      alert('Please make a selection!');
    } else {
      questionCounter++;
      displayNext();
    }
  });

  // Click handler for the 'prev' button
  $('#prev').on('click', function (e) {
    e.preventDefault();

    if(quiz.is(':animated')) {
      return false;
    }
    choose();
    questionCounter--;
    displayNext();
  });

  // Click handler for the 'Start Over' button
  $('#start').on('click', function (e) {
    e.preventDefault();

    if(quiz.is(':animated')) {
      return false;
    }
    questionCounter = 0;
    selections = [];
    displayNext();
    $('#start').hide();
  });

  // Animates buttons on hover
  $('.button').on('mouseenter', function () {
    $(this).addClass('active');
  });
  $('.button').on('mouseleave', function () {
    $(this).removeClass('active');
  });

  // Creates and returns the div that contains the questions and
  // the answer selections
  function createQuestionElement(index) {
    var qElement = $('<div>', {
      id: 'question'
    });

    var header = $('<h2 id = "questionh2">Question ' + (index + 1) + '</h2>');
    qElement.append(header);

    var question = $('<p>').append(questions[index].question);
    qElement.append(question);

    var radioButtons = createRadios(index);
    qElement.append(radioButtons);

    return qElement;
  }

  // Creates a list of the answer choices as radio inputs
  function createRadios(index) {
    var radioList = $('<ul>');
    var item;
    var input = '';
    for (var i = 0; i < questions[index].choices.length; i++) {
      item = $('<li id = "answerlist">');
      input = '<input type="radio" name="answer" value=' + i + ' />';
      input += questions[index].choices[i];
      item.append(input);
      radioList.append(item);
    }
    return radioList;
  }

  // Reads the user selection and pushes the value to an array
  function choose() {
    selections[questionCounter] = +$('input[name="answer"]:checked').val();
  }

  // Displays next requested element
  function displayNext() {
    quiz.fadeOut(function() {
      $('#question').remove();

      if(questionCounter < questions.length){
        var nextQuestion = createQuestionElement(questionCounter);
        quiz.append(nextQuestion).fadeIn();
        if (!(isNaN(selections[questionCounter]))) {
          $('input[value='+selections[questionCounter]+']').prop('checked', true);
        }

        // Controls display of 'prev' button
        if(questionCounter === 1){
          $('#prev').show();
        } else if(questionCounter === 0){

          $('#prev').hide();
          $('#next').show();
        }
      }else {
        console.log("inside else");
        displayScore();
        //var scoreElem = displayScore();
        //quiz.append(scoreElem).fadeIn();
        $('#next').hide();
        $('#prev').hide();
        $('#start').show();
      }
    });
  }

  // Computes score and returns a paragraph element to be displayed
  function displayScore() {
    //console.log("inside displayScore");
    var result = $('<p>',{id: 'question'});
    //console.log('lewat var result');

    var sensor = 0;
    var feeler = 0;
    var perceiver = 0;
    var introvert = 0;

    for (i = 0; i <= 2; i++){
      if (selections[i] === 0){
        sensor += 1;
      }
    }

    for (i=3; i<=5; i++){
      if (selections[i] === 0){
        feeler += 1;
      }
    }

    for (i=6; i<=8; i++){
      if (selections[i] === 0){
        perceiver += 1;
      }
    }

    for (i=9; i<=11; i++){
      if (selections[i] === 0){
        introvert += 1;
      }
    }

    //console.log('lewat semua for loop');

    var iww;
    var aoi;
    var dm;
    var org;

	console.log(introvert);
  console.log(sensor);
  console.log(feeler);
  console.log(perceiver);

    if (sensor >= 2){
        aoi = 0;
    } else {
        aoi = 1;
    }

    if (feeler >= 2){
       dm = 0;
    } else {
        dm = 1;
    }

    if (perceiver >= 2) {
        org = 0;
    } else {
        org = 1;
    }

    if (introvert >= 2){
        iww = 0;
    } else {
        iww = 1;
    }

   // console.log('lewat semua if loop');
    console.log(iww, aoi, dm, org);


   // result.append('You got blablabla');
    /*
    var para = document.createElement("p");
    var node = document.createTextNode('iww:' + iww + ' aoi: ' + aoi + ' dm:' + dm + ' org:' + org);
    para.appendChild(node);
    var element = document.getElementById("container");
    element.appendChild(para);*/
   // return result;

    
    $.post('php/answers.php', {iww:iww, aoi:aoi, dm:dm, org:org},
                                           function(data){
      console.log(data);
      var data = JSON.parse(data);
      $('div#description').text("You are: " + data.description);
      $('div#answer1').text(data.answer1);
      $('div#answer2').text(data.answer2);
      $('div#answer3').text(data.answer3);
      $('div#answer4').text(data.answer4);
      $('div#answer5').text(data.answer5);
    });


    /*
    result.append('You got ' + numCorrect + ' questions out of ' +
                 questions.length + ' right!!!');
    return score;
    */

  }
})();
