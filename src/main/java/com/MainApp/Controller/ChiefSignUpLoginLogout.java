package com.MainApp.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.ModelAttribute;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.MainApp.Entity.Chef;
import com.MainApp.Service.ChiefService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class ChiefSignUpLoginLogout {
    
    @Autowired
    ChiefService cService;

    // For SignUp Page Open
    @RequestMapping("/ChiefSignUp")                 
    public String showSignUp() {
        return "ChiefSignUp";
    }
    
    // For Login Page open
    @RequestMapping("/xyz")
    public String showLogin() {
        return "ChiefLogin";
    }

    // Handle Chief SignUp
    @RequestMapping("/csignup")
    public ModelAndView processChief(@ModelAttribute Chef c) {
        ModelAndView mv = new ModelAndView("ChiefSignUp");
        
        String result = cService.addChief(c);
        if(result.equals("Added")) {
            mv.addObject("msg", "Account Created Successfully");
        } else {
            mv.addObject("msg", "Account creation failed. Please try again.");
        }
        
        return mv;
    }

    // Handle Chief Login
    @RequestMapping("/clogin")
    public ModelAndView processChiefLogin(@RequestParam("uname") String uname,
                                          @RequestParam("upass") String upass, 
                                          HttpServletRequest req)
    {
        ModelAndView mv = new ModelAndView("ChiefLogin");
        
        String res = cService.checkChief(uname, upass);
        
        if(res.equals("Exists")) 
        {
            HttpSession session = req.getSession();
            session.setAttribute("acheck", uname);
            mv.addObject("msg", "Successfully logged in");
            mv.setViewName("ChiefHome"); 
        } else {
            mv.setViewName("ChiefLogin");
            mv.addObject("msg", "Invalid credentials. Please try again.");
        }
        
        return mv;
    }
    
    
     

  
}
