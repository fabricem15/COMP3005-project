exports.login = (req, res) => {

    console.log(req.body.email);
    console.log(req.body.password);
    
    if (!req.session.loggedin){

        // query the db for the user with:
        // email = req.body.email & password = req.body.password

        // req.session.username = 
        // req.session.userId = // db user id 

        
        return;
    }



}


exports.renderLogin = (req, res, next) =>{
    res.render('index', { title: 'Express', login:true});
}


exports.renderSignUp = (req, res) =>{
    res.render('index', {title: 'Express', login:false})
}

exports.signup = (req, res) => {


    
}