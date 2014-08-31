package tesla

class Spec {
	
	//static belongsTo = [comparison:Comparison]
	static belongsTo = [model:Model]
	//static hasMany = [comparison:Comparison]
	
	String name
	String power_outlet
	String trim_level
	String distance_range
	String additional_cost
	
	
	
    static constraints = {
		
    }
	
	
  
}
