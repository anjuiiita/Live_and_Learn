var express = require('express');
var router = express.Router();
const app = require('../app');
const fs = require('fs');
/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Live and Learn' });
});


router.post('/addFeature',function (req, res, next) {
  if(req.body.length > 0 ){
    var temp={"applicationName":"","features":[]};
    var feature = {"name":"","steps":[]};
    var steps;
    for(i in req.body){
      if(i == "applicationName"){
        temp["applicationName"] = req.body[i];
      }
      if(i.includes("feature")){
        if(feature.name != ""){
          temp.features.push(feature);
          feature = {"name":"","steps":[]};
        }
        feature.name = req.body[i];
      }
      else if(i.includes("Steps")){
        feature.steps.push(req.body[i]);
      }
    }
    if(feature.name != "")
      temp.features.push(feature);
   
    console.log(JSON.stringify(temp));
    var rawdata = JSON.parse(fs.readFileSync('file.json'));
    rawdata.data.push(temp);
    
    fs.writeFileSync('file.json', JSON.stringify(rawdata), finished);

    function finished(err)
    {
        console.log('success');
    } }
    res.redirect("/");
})

router.post('/showList',function (req, res, next) {

  var rawdata = JSON.parse(fs.readFileSync('file.json'));
  res.send({rawdata});

})
module.exports = router;
