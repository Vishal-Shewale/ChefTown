package com.MainApp.Repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.MainApp.Entity.Chef;



@Repository
public interface ChefRepository  extends CrudRepository<Chef, String>{
	
	
	Chef findByUname(String uname);
	
	Chef findByUnameAndUpass(String uname,String upass);

}
