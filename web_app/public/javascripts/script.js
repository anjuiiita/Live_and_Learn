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
      '"><span id="buttons"><button type="button" id="btn3' +
      id +
      '" class="btn btn-primary mt-2 w-25"> Add steps </button> </span></div></div>';
    $("#moreFeatures").append($(newFeature).html());

    id++;
  }
});

$(document).on("click", "#btn31", function () {
  if (id1 <= 10) {
    var newFeature =
      '<div><input type="text" class="form-control mt-2" placeholder="Feature Steps" name="Steps1'+id1 +'"/></div>';
    $("#steps1").prepend($(newFeature).html());
    id1++;
  }
  if (!isImageButtonAdded) {
    var newFeature = 
      '<div><button type="button" id="imageButton" class="btn btn-primary btn-block mt-2 w-50" style="float: right"> Upload image for this step </button></div>';
    $("#buttons").append($(newFeature).html());
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
});
$(document).on("click", "#btn33", function () {
  if (id3 <= 10) {
    var newFeature =
      '<div><input type="text" class="form-control mt-2" placeholder="Feature Steps" name="Steps3'+id3 +'"/></div>';
    $("#steps3").prepend($(newFeature).html());
    id3++;
  }
});
$(document).on("click", "#btn34", function () {
  if (id4 <= 10) {
    var newFeature =
      '<div><input type="text" class="form-control mt-2" placeholder="Feature Steps" name="Steps4'+id4 +'"/></div>';
    $("#steps4").prepend($(newFeature).html());
    id4++;
  }
});
$(document).on("click", "#btn35", function () {
  if (id5 <= 10) {
    var newFeature =
      '<div><input type="text" class="form-control mt-2" placeholder="Feature Steps" name="Steps5'+id5 +'"/></div>';
    $("#steps5").prepend($(newFeature).html());
    id5++;
  }
});
$(document).on("click", "#btn36", function () {
  if (id6 <= 10) {
    var newFeature =
      '<div><input type="text" class="form-control mt-2" placeholder="Feature Steps" name="Steps6'+id6 +'"/></div>';
    $("#steps6").prepend($(newFeature).html());
    id6++;
  }
});
$(document).on("click", "#btn37", function () {
  if (id7 <= 10) {
    var newFeature =
      '<div><input type="text" class="form-control mt-2" placeholder="Feature Steps" name="Steps7'+id7 +'"/></div>';
    $("#steps7").prepend($(newFeature).html());
    id7++;
  }
});
$(document).on("click", "#btn38", function () {
  if (id8 <= 10) {
    var newFeature =
      '<div><input type="text" class="form-control mt-2" placeholder="Feature Steps" name="Steps8'+id8 +'"/></div>';
    $("#steps8").prepend($(newFeature).html());
    id8++;
  }
});
$(document).on("click", "#btn39", function () {
  if (id9 <= 10) {
    var newFeature =
      '<div><input type="text" class="form-control mt-2" placeholder="Feature Steps" name="Steps9'+id9 +'"/></div>';
    $("#steps9").prepend($(newFeature).html());
    id9++;
  }
});
$(document).on("click", "#btn310", function () {
  if (id10 <= 10) {
    var newFeature =
      '<div><input type="text" class="form-control mt-2" placeholder="Feature Steps" name="Steps10'+id10 +'"/></div>';
    $("#steps10").prepend($(newFeature).html());
    id10++;
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

