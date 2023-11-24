var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});

// when a request is sent for the home page, do we send all the workouts, classes and other things 
// to the same homepage? possibly.


router.get('/:id', function(req, res, next){
    // return member profile with that id 

    // as opposed to response.render 
    res.send('')
});
router.post('/:id/', function (req, res, next){
    // handle editing a member data 
});

router.get('/')

module.exports = router;