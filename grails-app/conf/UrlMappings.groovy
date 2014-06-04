class UrlMappings {

	static mappings = {


        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }



        "/" ( controller:"Shelters", action:"map" )
        "500"(view:'/error')
	}
}
