var express = require('express');
var router = express.Router();

const accountController = require('../controllers/accountController');


// ACCOUNT ROUTES
router.get('/', accountController.renderLogin);
router.post('/login', accountController.login);
router.get('/signup', accountController.renderSignUp);
router.post('/signup', accountController.signup);




// /* GET home page. */
// router.get('/', function(_, res, _) {

//   // return the login page
//   // if login successful you 
//   res.render('index', { title: 'Express' });
// });


module.exports = router;
