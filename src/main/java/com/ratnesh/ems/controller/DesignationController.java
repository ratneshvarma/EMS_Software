package com.ratnesh.ems.controller;

import com.ratnesh.ems.model.Branch;
import com.ratnesh.ems.model.Designation;
import com.ratnesh.ems.service.CompanyServiceImpl;
import com.ratnesh.ems.service.DesignationServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

/**
 * Created by ratnesh on 8/7/17.
 */
@Controller
@RequestMapping("/designation")
public class DesignationController {
@Autowired
DesignationServiceImpl designationService;

    @RequestMapping(value = "/addDesignation")
    public ModelAndView branchPage(){

        return new ModelAndView("designation/create","designation", new Designation());
    }

    @RequestMapping(value = "/saveDesignation")
    public ModelAndView branchSave(@ModelAttribute("designation") Designation designation, RedirectAttributes redirectAttributes){

        String message=null;
        boolean insterted  = designationService.addDesignation(designation);

        if(insterted)
            message = "Designation successfully added.";

        else
            message = "Insertion failed, please retry.";

        redirectAttributes.addFlashAttribute("message",message);
        return new ModelAndView("redirect:/designation/addDesignation");
    }

    @RequestMapping("/viewAll")
    public ModelAndView dashboard(){
        List designationList = designationService.getAllDesignations();
        return new ModelAndView("designation/index","designationList",designationList);
    }



    @RequestMapping("/update")
    public ModelAndView update(@RequestParam("id") long designationId){
        Designation designation= new Designation();
        designation.setDesignationId(designationId);
        designation= designationService.designationForUpdate(designation);

        ModelAndView modelAndView = new ModelAndView("designation/edit","designation", designation);

        return modelAndView;
    }

    @RequestMapping(value = "/updateDesignation",method= RequestMethod.POST)
    public ModelAndView updateEmployee(@ModelAttribute("designation") Designation designation, RedirectAttributes redirectAttributes){

        String message = null;
        boolean updated  = designationService.editDesignation(designation);
        if(updated)
            message = "Designation updated.";

        else
            message = "Updation failed, please retry.";

        redirectAttributes.addFlashAttribute("message",message);
        return new ModelAndView("redirect:/designation/viewAll");
    }
    @RequestMapping("/delete")
    public ModelAndView delete(@RequestParam("id") long designationId, final RedirectAttributes redirectAttributes){
        Designation designation = new Designation();
        designation.setDesignationId(designationId);
        designationService.removeDesignation(designation);
        redirectAttributes.addFlashAttribute("message","Record deleted.");
        return new ModelAndView("redirect:/designation/viewAll");
    }
}
