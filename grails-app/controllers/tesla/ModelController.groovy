package tesla



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ModelController {

	static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]


    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Model.list(params), model:[specInstanceCount: Model.count()]
    }
//add to database controller
	def modelAdd(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		respond Model.list(params), model:[modelInstanceCount: Model.count()]
		
 

		
	}
	
	def modelS(){
		
	//Get Model informtation
		def modelS = Model.where {
			name == "Model S" 
		}
		
		def Mresults = modelS.toList()
		def ModelSname = Mresults.name.join()
		def ModelScost = Mresults.starting_cost.join()
	
			
		
	//Get basic stats	
		def basic = Spec.where {
			model_id == 'ModelS' & name == 'Basic'
		}
		
		def results = basic.toList()
		def Bnames = results.name.join()
		def Bcosts = results.additional_cost.join()
		def Branges = results.distance_range.join()
		def BpowerOuts = results.power_outlet.join()
		def Btrims = results.trim_level.join()
		def BId = results.id.join()
		
	//Get Sport stats
		def sport = Spec.where {
			model_id == 'ModelS' & name == 'Sport'
		}
		
		def Sresults = sport.toList()
		def Snames = Sresults.name.join()
		def Scosts = Sresults.additional_cost.join()
		def Sranges = Sresults.distance_range.join()
		def SpowerOuts = Sresults.power_outlet.join()
		def Strims = Sresults.trim_level.join()
	
	//Get Exterem Stats
		def extreme = Spec.where {
			model_id == 'ModelS' & name == 'Extreme'
		}
		
		def Eresults = extreme.toList()
		def Enames = Eresults.name.join()
		def Ecosts = Eresults.additional_cost.join()
		def Eranges = Eresults.distance_range.join()
		def EpowerOuts = Eresults.power_outlet.join()
		def Etrims = Eresults.trim_level.join()
		
		
		
		render(view: "modelS", model: [BId:BId, name:Bnames, cost:Bcosts, range:Branges, powerOut:BpowerOuts, trim:Btrims, Sname:Snames, Scost:Scosts,
			 Srange:Sranges, SpowerOut:SpowerOuts, Strim:Strims, Ename:Enames, Ecost:Ecosts, Erange:Eranges, EpowerOut:EpowerOuts, Etrim:Etrims,
			 ModelName:ModelSname, ModelCost:ModelScost ] )
	//println ${tesla.Model.name}
		
		
	}
	
	def modelX(){
		
	}

	//def addCompare(){
		//def b = new Comparison(buyer_id: "The Shining", model_id:"2", spec_id:"2")
		//b.save(insert: true)
		//def buyer = Buyer.get(params.id)
		//def firstName = buyer.first_name
		//render(view: "addCompare", model: [Fname:firstName])
		//def spec = Spec.findById(params.spec_id)
		//if(spec){
			
		//	render spec.id
			//redirect(controller: "buyer", action: "comparisonAdd", params: [spec] )
		//}else{
		//render 'no'
		//}
		
		
		
		
		//render(controller: "buyer", action: "comparisonAdd")
		
		
		//def person = new Comparison(params)
		//person.save()
		//render "Success!"
		
		
		//render (view: "modelS")
	//}
	
	
	def roadster(){
		
		def roadster = Model.where {
			name == "Roadster" 
		}
		
		def Mresults = roadster.toList()
		def ModelSname = Mresults.name.join()
		def ModelScost = Mresults.starting_cost.join()
	
			
		
	//Get basic stats	
		def basic = Spec.where {
			model_id == 'Roadster' & name == 'Basic'
		}
		
		def results = basic.toList()
		def Bnames = results.name.join()
		def Bcosts = results.additional_cost.join()
		def Branges = results.distance_range.join()
		def BpowerOuts = results.power_outlet.join()
		def Btrims = results.trim_level.join()
		def BId = results.id.join()
		
	//Get Sport stats
		def sport = Spec.where {
			model_id == 'Roadster' & name == 'Sport'
		}
		
		def Sresults = sport.toList()
		def Snames = Sresults.name.join()
		def Scosts = Sresults.additional_cost.join()
		def Sranges = Sresults.distance_range.join()
		def SpowerOuts = Sresults.power_outlet.join()
		def Strims = Sresults.trim_level.join()
	
	//Get Exterem Stats
		def extreme = Spec.where {
			model_id == 'Roadster' & name == 'Extreme'
		}
		
		def Eresults = extreme.toList()
		def Enames = Eresults.name.join()
		def Ecosts = Eresults.additional_cost.join()
		def Eranges = Eresults.distance_range.join()
		def EpowerOuts = Eresults.power_outlet.join()
		def Etrims = Eresults.trim_level.join()
		
		
		
		render(view: "roadster", model: [BId:BId, name:Bnames, cost:Bcosts, range:Branges, powerOut:BpowerOuts, trim:Btrims, Sname:Snames, Scost:Scosts,
			 Srange:Sranges, SpowerOut:SpowerOuts, Strim:Strims, Ename:Enames, Ecost:Ecosts, Erange:Eranges, EpowerOut:EpowerOuts, Etrim:Etrims,
			 ModelName:ModelSname, ModelCost:ModelScost ] )
		
	
		
	}
	
	def model3(){
		def model3 = Model.where {
			name == "Model 3"
		}
		
		def Mresults = model3.toList()
		def ModelSname = Mresults.name.join()
		def ModelScost = Mresults.starting_cost.join()
	
			
		
	//Get basic stats
		def basic = Spec.where {
			model_id == 'Model3' & name == 'Basic'
		}
		
		def results = basic.toList()
		def Bnames = results.name.join()
		def Bcosts = results.additional_cost.join()
		def Branges = results.distance_range.join()
		def BpowerOuts = results.power_outlet.join()
		def Btrims = results.trim_level.join()
		def BId = results.id.join()
		
	//Get Sport stats
		def sport = Spec.where {
			model_id == 'Model3' & name == 'Sport'
		}
		
		def Sresults = sport.toList()
		def Snames = Sresults.name.join()
		def Scosts = Sresults.additional_cost.join()
		def Sranges = Sresults.distance_range.join()
		def SpowerOuts = Sresults.power_outlet.join()
		def Strims = Sresults.trim_level.join()
	

		
		
		
		render(view: "model3", model: [BId:BId, name:Bnames, cost:Bcosts, range:Branges, powerOut:BpowerOuts, trim:Btrims, Sname:Snames, Scost:Scosts,
			 Srange:Sranges, SpowerOut:SpowerOuts, Strim:Strims, ModelName:ModelSname, ModelCost:ModelScost ] )
		
	}

	
	

	def show(Model modelInstance) {
		respond modelInstance
	}

	def create() {
		respond new Model(params)
	}

	@Transactional
	def save(Model modelInstance) {
		if (modelInstance == null) {
			notFound()
			return
		}

		if (modelInstance.hasErrors()) {
			respond modelInstance.errors, view:'create'
			return
		}

		modelInstance.save flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.created.message', args: [message(code: 'model.label', default: 'Model'), modelInstance.id])
				redirect modelInstance
			}
			'*' { respond modelInstance, [status: CREATED] }
		}
	}

	def edit(Model modelInstance) {
		respond modelInstance
	}

	@Transactional
	def update(Model modelInstance) {
		if (modelInstance == null) {
			notFound()
			return
		}

		if (modelInstance.hasErrors()) {
			respond modelInstance.errors, view:'edit'
			return
		}

		modelInstance.save flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.updated.message', args: [message(code: 'Model.label', default: 'Model'), modelInstance.id])
				redirect modelInstance
			}
			'*'{ respond modelInstance, [status: OK] }
		}
	}

	@Transactional
	def delete(Model modelInstance) {

		if (modelInstance == null) {
			notFound()
			return
		}

		modelInstance.delete flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.deleted.message', args: [message(code: 'Model.label', default: 'Model'), modelInstance.id])
				redirect action:"index", method:"GET"
			}
			'*'{ render status: NO_CONTENT }
		}
	}

	protected void notFound() {
		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.not.found.message', args: [message(code: 'model.label', default: 'Model'), params.id])
				redirect action: "index", method: "GET"
			}
			'*'{ render status: NOT_FOUND }
		}
	}
}
