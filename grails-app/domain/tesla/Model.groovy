package tesla

class Model {
	
	static hasMany = [spec:Spec]
	
	String name
	BigDecimal starting_cost
	Integer spec_id
	
	
	
    static constraints = {
    }
}
