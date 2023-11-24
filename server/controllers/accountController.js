exports.login = (req, res) => {

    if (!req.session.loggedin){

        // query the db for the user with:
        // email = req.body.email & password = req.body.password

        // req.session.username = 
        // req.session.userId = // db user id 

        
        return;
    }



}


exports.renderLogin = (req, res) =>{
    res.render('index', { title: 'Express', login:true});
}


exports.renderSignUp = (req, res) =>{
    res.render('index', {title: 'Express', login:false})
}

exports.signup = (req, res) => {


    
}