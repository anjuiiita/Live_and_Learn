var id = 1;
var id1 = 1;
var id2 = 1;
var id3 = 1;
var id4 = 1;
var id5 = 1;
var id6 = 1;
var id7 = 1;
var id8 = 1;
var id9 = 1;
var id10 = 1;
var isImageButtonAdded = false;

$(document).on("click", "#btn1", function () {
  if (id <= 10) {
    var newFeature =
      '<div><label class="mt-3">Feature ' +
      id +
      '</label><input type="text" class="form-control" placeholder="Feature Name" name="feature' +
      id +
      '"/><div id="steps' +
      id +
      '"><span id="buttons' +
      id +
      '"><button type="button" id="btn3' +
      id +
      '" class="btn btn-primary mt-2 w-25"> Add steps </button> </span></div></div>';
    $("#moreFeatures").append($(newFeature).html());

    id++;
    //hide the image button when adding a new feature
    isImageButtonAdded = false;
  }
});

$(document).on("click", "#btn31", function () {
  if (id1 <= 10) {
    var newFeature =
      '<div><input type="text" class="form-control mt-2" placeholder="Feature Steps" name="Steps1'+id1 +'"/> <input type="file" id="file" style="display:none;" /></div>';
    $("#steps1").prepend($(newFeature).html());
    id1++;
  }
  //show image button when AddStep is clicked at the first time for the first feature
  if (!isImageButtonAdded) {
    var newFeature = 
      '<div><button type="button" onclick="fileUpload();" id="imageButton1' +
      id1 + 
      '" class="btn btn-primary btn-block mt-2 w-50" style="float: right"> Upload image </button></div>';
    $("#buttons1").append($(newFeature).html());
    isImageButtonAdded = true;
  }
});

$(document).on("click", "#btn32", function () {
  if (id2 <= 10) {
    var newFeature =
      '<div><input type="text" class="form-control mt-2" placeholder="Feature Steps "name="Steps2'+id2 +'"/></div>';
    $("#steps2").prepend($(newFeature).html());
    id2++;
  }
  //show image button when AddStep is clicked at the first time for the second feature
  if (!isImageButtonAdded) {
    var newFeature = 
      '<div><button type="button" id="imageButton2' +
      id2 + 
      '" class="btn btn-primary btn-block mt-2 w-50" style="float: right"> Upload image for this step </button></div>';
    $("#buttons2").append($(newFeature).html());
    isImageButtonAdded = true;
  }
});
$(document).on("click", "#btn33", function () {
  if (id3 <= 10) {
    var newFeature =
      '<div><input type="text" class="form-control mt-2" placeholder="Feature Steps" name="Steps3'+id3 +'"/></div>';
    $("#steps3").prepend($(newFeature).html());
    id3++;
  }
  //show image button when AddStep is clicked at the first time for the third feature
  if (!isImageButtonAdded) {
    var newFeature = 
      '<div><button type="button" id="imageButton3' +
      id3 + 
      '" class="btn btn-primary btn-block mt-2 w-50" style="float: right"> Upload image for this step </button></div>';
    $("#buttons3").append($(newFeature).html());
    isImageButtonAdded = true;
  }
});
$(document).on("click", "#btn34", function () {
  if (id4 <= 10) {
    var newFeature =
      '<div><input type="text" class="form-control mt-2" placeholder="Feature Steps" name="Steps4'+id4 +'"/></div>';
    $("#steps4").prepend($(newFeature).html());
    id4++;
  }
  //show image button when AddStep is clicked at the first time for the 4th feature
  if (!isImageButtonAdded) {
    var newFeature = 
      '<div><button type="button" id="imageButton4' +
      id4 + 
      '" class="btn btn-primary btn-block mt-2 w-50" style="float: right"> Upload image for this step </button></div>';
    $("#buttons4").append($(newFeature).html());
    isImageButtonAdded = true;
  }
});
$(document).on("click", "#btn35", function () {
  if (id5 <= 10) {
    var newFeature =
      '<div><input type="text" class="form-control mt-2" placeholder="Feature Steps" name="Steps5'+id5 +'"/></div>';
    $("#steps5").prepend($(newFeature).html());
    id5++;
  }
  //show image button when AddStep is clicked at the first time for the 5th feature
  if (!isImageButtonAdded) {
    var newFeature = 
      '<div><button type="button" id="imageButton5' +
      id5 + 
      '" class="btn btn-primary btn-block mt-2 w-50" style="float: right"> Upload image for this step </button></div>';
    $("#buttons5").append($(newFeature).html());
    isImageButtonAdded = true;
  }
});
$(document).on("click", "#btn36", function () {
  if (id6 <= 10) {
    var newFeature =
      '<div><input type="text" class="form-control mt-2" placeholder="Feature Steps" name="Steps6'+id6 +'"/></div>';
    $("#steps6").prepend($(newFeature).html());
    id6++;
  }
  //show image button when AddStep is clicked at the first time for the 6th feature
  if (!isImageButtonAdded) {
    var newFeature = 
      '<div><button type="button" id="imageButton6' +
      id6 + 
      '" class="btn btn-primary btn-block mt-2 w-50" style="float: right"> Upload image for this step </button></div>';
    $("#buttons6").append($(newFeature).html());
    isImageButtonAdded = true;
  }
});
$(document).on("click", "#btn37", function () {
  if (id7 <= 10) {
    var newFeature =
      '<div><input type="text" class="form-control mt-2" placeholder="Feature Steps" name="Steps7'+id7 +'"/></div>';
    $("#steps7").prepend($(newFeature).html());
    id7++;
  }
  //show image button when AddStep is clicked at the first time for the 7th feature
  if (!isImageButtonAdded) {
    var newFeature = 
      '<div><button type="button" id="imageButton7' +
      id7 + 
      '" class="btn btn-primary btn-block mt-2 w-50" style="float: right"> Upload image for this step </button></div>';
    $("#buttons7").append($(newFeature).html());
    isImageButtonAdded = true;
  }
});
$(document).on("click", "#btn38", function () {
  if (id8 <= 10) {
    var newFeature =
      '<div><input type="text" class="form-control mt-2" placeholder="Feature Steps" name="Steps8'+id8 +'"/></div>';
    $("#steps8").prepend($(newFeature).html());
    id8++;
  }
  //show image button when AddStep is clicked at the first time for the 8th feature
  if (!isImageButtonAdded) {
    var newFeature = 
      '<div><button type="button" id="imageButton8' +
      id8 + 
      '" class="btn btn-primary btn-block mt-2 w-50" style="float: right"> Upload image for this step </button></div>';
    $("#buttons8").append($(newFeature).html());
    isImageButtonAdded = true;
  }
});
$(document).on("click", "#btn39", function () {
  if (id9 <= 10) {
    var newFeature =
      '<div><input type="text" class="form-control mt-2" placeholder="Feature Steps" name="Steps9'+id9 +'"/></div>';
    $("#steps9").prepend($(newFeature).html());
    id9++;
  }
  //show image button when AddStep is clicked at the first time for the 9th feature
  if (!isImageButtonAdded) {
    var newFeature = 
      '<div><button type="button" id="imageButton9' +
      id9 + 
      '" class="btn btn-primary btn-block mt-2 w-50" style="float: right"> Upload image for this step </button></div>';
    $("#buttons9").append($(newFeature).html());
    isImageButtonAdded = true;
  }
});
$(document).on("click", "#btn310", function () {
  if (id10 <= 10) {
    var newFeature =
      '<div><input type="text" class="form-control mt-2" placeholder="Feature Steps" name="Steps10'+id10 +'"/></div>';
    $("#steps10").prepend($(newFeature).html());
    id10++;
  }
  //show image button when AddStep is clicked at the first time for the 10th feature
  if (!isImageButtonAdded) {
    var newFeature = 
      '<div><button type="button" id="imageButton10' +
      id10 + 
      '" class="btn btn-primary btn-block mt-2 w-50" style="float: right"> Upload image for this step </button></div>';
    $("#buttons10").append($(newFeature).html());
    isImageButtonAdded = true;
  }
});

$(document).on("click", "#btnList", function () {
  var newFeature = "<div>";
  $.post(
          "http://localhost:3000/showList",
          function (data, status) {
            // alert("Data: " + data + "\nStatus: " + status);
            var obj = data['rawdata'];
            for(key in obj){
              //console.log(key +'---->'+JSON.stringify(obj[key]));
              for(i in obj[key]){
                console.log(obj[key][i])
                newFeature += "<div><h6> Application Name </h6>: <p>" + obj[key][i].applicationName + "</p> </br></div>";
                for (j in obj[key][i].features) {
                  console.log(j);
                  newFeature += "<div>&emsp;<h6> Feature Name </h6>: <p>" + obj[key][i].features[j].name + "</p> </br></div>";
                  var inx = 1;
                  for ( k in obj[key][i].features[j].steps) {   
                    newFeature += "<div>&emsp;&emsp;<h6> Step " + inx +"</h6>: <p>" + obj[key][i].features[j].steps[k] + "</p> </br></div>";
                    inx++;
                  }
                }
              }
            }
            newFeature += "</div>";
            $("#featureList").append($(newFeature).html());
          }
        );
        
});

//onClick function for the upload image button
function fileUpload() {
  $("#file").click();
}
//onChange function for the file input
$(document).on("change", "#file", function () {
  var fileInput = $('#file');
  var filename = fileInput[0].files[0].name;
  //replace the feature step with the file name
  //***** This is just for demo video ******/
  var i = 1;
  var element;
  while (!document.getElementsByName("Steps1"+i)[0].value == "") {
    i ++;
  }
  element = document.getElementsByName("Steps1"+i);
  element[0].value = filename;
  console.log(element);
});

