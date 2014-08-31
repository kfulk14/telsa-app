package tesla

class Buyer {
	//static hasMany = [models: Model]
	
	String first_name
	String last_name
	String password
	String email
	

    static constraints = {
		email(unique: true)
		password(password: true)
		
    }
	
	
	
}
