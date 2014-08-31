package tesla



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional
class BuyerController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index() {
       
		
 
//def p = Buyer.read(1)
	//render p.first_name
		//def p = Buyer.get(1)
		//p.save()
		
		//def b = Buyer.list()
		//render b.first_name
		render (view: 'buyerAdd.gsp')
		
		
    }
	
	def myTesla() {
	
		
		
		
		render(view:"myTesla.gsp") 
	}
	
	def createAccount() {
		//respond new Buyer(params)
	}
	
	def saveBuyer(){
		def buyer = new Buyer(params)
		buyer.save()
		render(view:"myTesla.gsp")
		
		}
	def authenticate(){
		def user = Buyer.findByEmailAndPassword(params.email, params.password)
		if(user){
			session.user = user
			flash.message = "Hello ${user.first_name}!"
			
			redirect (action:"login", id: user.id, params: [id: user.id])
			
		}else{
		flash.message = "Sorry, ${params.email}. Please try again."
		render "errror"
		}
	
		}
	
	def comparison(){
			def spec = Spec.findById(params.spec_id)
		if(spec){
			
			def s = spec.id
			//redirect(controller: "buyer", action: "comparisonAdd", params: [spec] )
			render (view: "comparisonAdd.gsp", model:[s:s])
		}else{
		render 'no'
		}
	}
		
	def comparisonAdd(){
		def spec = Spec.findById(params.spec_id)
		render (view: "comparisonAdd.gsp", model: [spec:spec] )
			
		}
		
		
		
		
		//render(view: "comparisonAdd.gsp")
	
	def addAuthenticate(){
		def user = Buyer.findByEmailAndPassword(params.email, params.password)
		if(user){
			session.user = user
			
			
			//def buyer = Buyer.get(params.id)
			def buyerId = user.id
			
			
		//ADDS AND SAVES TO COMPARISON TABLE	
			//def b = new Comparison(params)
			//b.save()
			
			
			def spec = Spec.findById(params.spec)
			if (spec){
			def s = spec.id
			
			def b = new Comparison(buyer_id:buyerId, spec_id:s, model_id:'1' )
			b.save()
			
			redirect (action:"login", id: user.id, params: [id: user.id])
			
			}else{render"no"}
			//redirect (action:"login", id: user.id, params: [id: user.id])
			
		}else{
		flash.message = "Sorry, ${params.email}. Please try again."
		render "errror"
		}
	
		}

	
		
	
	
	
	
	def login(Buyer buyerInstance, Comparison comparisonInstance){
		
	//gets buyer id from buyer	
		def buyer = Buyer.get(params.id)
		def firstName = buyer.first_name
		
		
	//Gets and Matches buyer ID to comparison ID 	
		def buyers = Comparison.where {
			buyer_id ==  buyer.id
			}
		def comparisonTable= buyers.list()
		def compSpec = comparisonTable.spec_id
		
		
		
	//pulls in model id from buyer to compare to comparison table	
		def Bresults = buyers.toList()
		def BmodelID = Bresults.model_id.join()
		
	//use model id from compariosn table to get model details	
		def modelInfo = Model.where{
		id == BmodelID}
		def modelDetails = modelInfo.list()
		
		//def CompareModelName = modelInfo.name
	
		
	//Pull in spec for particular model
		def specInfo = Spec.where{
			id == compSpec
		}
		def SpecList = specInfo.list()
	
		//def additionalCost = SpecList.additional_cost.join()
		//def specName = SpecList.name.join()
		
		
		
		
		
		
		
		
		//def map = [Fname:firstName, nname:CompareModelName, additionalCost:additionalCost]
		//render(view: "login", model: map)
		
		render(view: "login", model: [Fname:firstName, modelDetails:modelDetails, comparisonTable:comparisonTable, SpecList:SpecList])
		//render book.first_name
		respond buyerInstance
		//respond modelInfo.list()
		
	}
	
	def logout() {
		session.user=null
		redirect(action: "myTesla")
	}
		
	
	
	
	
	
	
//add to database controller
	def buyerAdd(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		respond Buyer.list(params), model:[buyerInstanceCount: Buyer.count()]
		
		
		params.max = Math.min(max ?: 10, 100)
		respond Model.list(params), model:[specInstanceCount: Model.count()]
		
		params.max = Math.min(max ?: 10, 100)
		respond Comparison.list(params), model:[comparisonInstanceCount: Comparison.count()]
		
		params.max = Math.min(max ?: 10, 100)
		respond Spec.list(params), model:[specInstanceCount: Spec.count()]
		
		
		//render(view: "buyerAdd")
 
//def p = Buyer.read(1)
	//render p.first_name
		//def p = Buyer.get(1)
		//p.save()
		
		//def b = Buyer.list()
		//render b.first_name
		//render(view:"/buyerAdd.gsp")
		
	}

	def supercharger(){
		
	}
	
	

    def show(Buyer buyerInstance) {
        respond buyerInstance
		
		
    }
	

    def create() {
        respond new Buyer(params)
    }

    @Transactional
    def save(Buyer buyerInstance) {
        if (buyerInstance == null) {
            notFound()
            return
        }

        if (buyerInstance.hasErrors()) {
            respond buyerInstance.errors, view:'create'
            return
        }

        buyerInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'buyer.label', default: 'Buyer'), buyerInstance.id])
                redirect buyerInstance
            }
            '*' { respond buyerInstance, [status: CREATED] }
        }
    }

    def edit(Buyer buyerInstance) {
        respond buyerInstance
    }

    @Transactional
    def update(Buyer buyerInstance) {
        if (buyerInstance == null) {
            notFound()
            return
        }

        if (buyerInstance.hasErrors()) {
            respond buyerInstance.errors, view:'edit'
            return
        }

        buyerInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Buyer.label', default: 'Buyer'), buyerInstance.id])
                redirect buyerInstance
            }
            '*'{ respond buyerInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Buyer buyerInstance) {

        if (buyerInstance == null) {
            notFound()
            return
        }	

        buyerInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Buyer.label', default: 'Buyer'), buyerInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'buyer.label', default: 'Buyer'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
