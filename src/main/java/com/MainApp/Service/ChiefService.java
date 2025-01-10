package com.MainApp.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.MainApp.Entity.Chef;
import com.MainApp.Repository.ChefRepository;

@Service
public class ChiefService {

	@Autowired
	ChefRepository cRepo;

	public String addChief(Chef c) {
		if (cRepo.findByUname(c.getUname()) != null)
		
		{
			return "Exists";
		}
		else 
		
		{
			
			cRepo.save(c);
			return "Added";
		}
	}

	public String checkChief(String uname, String upass) 
	{
		if (cRepo.findByUnameAndUpass(uname, upass) != null) 
		{
			return "Exists";

		}
		else
		{
			return "not Exist";

		}
	}

}
