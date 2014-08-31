dataSource {
    pooled = true
    jmxExport = true
    //driverClassName = "org.h2.Driver"
	url = 'jdbc:mysql://localhost/tesla'
	driverClassName = "com.mysql.jdbc.Driver"
	dialect = "org.hibernate.dialect.MySQL5InnoDBDialect"
    username = "root"
    password = "anthony19"
	//username = ""
	//password = ""
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = true
	cache.provider_class = 'net.sf.ehcache.hibernate.EhCacheProvider'
//    cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory' // Hibernate 3
  //  cache.region.factory_class = 'org.hibernate.cache.ehcache.EhCacheRegionFactory' // Hibernate 4
    singleSession = true // configure OSIV singleSession mode
   // flush.mode = 'manual' // OSIV session flush mode outside of transactional context
}

// environment specific settings
environments {
    development {
        dataSource {
            dbCreate = "update"  // one of 'create', 'create-drop', 'update', 'validate', ''
			//dbCreate = "validate"
			
            //url = "jdbc:h2:mem:devDb;MVCC=TRUE;LOCK_TIMEOUT=10000;DB_CLOSE_ON_EXIT=FALSE"
			url = "jdbc:mysql://localhost:3306/tesla"
			grails.serverURL = "http://localhost:8080/${tesla}"
			username = "root"
			password = "anthony19"
			
			/*
			//dbCreate = "update"  // one of 'create', 'create-drop', 'update', 'validate', ''
			dbCreate = "validate" 
			
			//url = "jdbc:h2:mem:devDb;MVCC=TRUE;LOCK_TIMEOUT=10000;DB_CLOSE_ON_EXIT=FALSE"
			url = "jdbc:mysql://localhost:3306/tesla"
			grails.serverURL = "http://localhost:8080/${tesla}"
			username = "root"
			password = "anthony19"
		*/
		
			
			
        }
    }
    test {
        dataSource {
            dbCreate = "update"
           //url = "jdbc:h2:mem:testDb;MVCC=TRUE;LOCK_TIMEOUT=10000;DB_CLOSE_ON_EXIT=FALSE"
			url = "jdbc:mysql://localhost:3306/tesla"
			grails.serverURL = "http://localhost:8080/${tesla}"
			username = "root"
			password = "anthony19"
			
			//dbCreate = "update"  // one of 'create', 'create-drop', 'update', 'validate', ''
			dbCreate = "validate"
			
			//url = "jdbc:h2:mem:devDb;MVCC=TRUE;LOCK_TIMEOUT=10000;DB_CLOSE_ON_EXIT=FALSE"
			url = "jdbc:mysql://localhost:3306/tesla"
			grails.serverURL = "http://localhost:8080/${tesla}"
			username = "root"
			password = "anthony19"
        }
    }
    production {
        dataSource {
			pooled = true
            dbCreate = "update"
           // url = "jdbc:h2:prodDb;MVCC=TRUE;LOCK_TIMEOUT=10000;DB_CLOSE_ON_EXIT=FALSE"
			url = "jdbc:mysql://localhost:3306/tesla"
			username = "root"
			password = "anthony19"
			
            properties {
               // See http://grails.org/doc/latest/guide/conf.html#dataSource for documentation
               jmxEnabled = true
               initialSize = 5
               maxActive = 50
               minIdle = 5
               maxIdle = 25
               maxWait = 10000
               maxAge = 10 * 60000
               timeBetweenEvictionRunsMillis = 5000
               minEvictableIdleTimeMillis = 60000
               validationQuery = "SELECT 1"
               validationQueryTimeout = 3
               validationInterval = 15000
               testOnBorrow = true
               testWhileIdle = true
               testOnReturn = false
               jdbcInterceptors = "ConnectionState"
			   defaultTransactionIsolation = java.sql.Connection.TRANSACTION_READ_COMMITTED
            }
        }
    }
}

