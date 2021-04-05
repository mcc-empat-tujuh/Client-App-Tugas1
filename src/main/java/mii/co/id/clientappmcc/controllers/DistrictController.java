/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mii.co.id.clientappmcc.controllers;

import mii.co.id.clientappmcc.models.District;
import mii.co.id.clientappmcc.services.DistrictService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author ACER
 */
@Controller
@RequestMapping("district")
public class DistrictController {
    
    @Autowired
    private DistrictService districtService;
    
    @GetMapping
    public String getAll(Model model) {
        model.addAttribute("districts", districtService.getAll());
//        System.out.println(districtService.getById(1).getDistrictId());
        return "district";
    }
    
//    @GetMapping("/{id}")
//    public String getById(@PathVariable("id") Integer id, Model model) {
//        model.addAttribute("post", postService.getById(id));
//        return "post-edit-form";
//    }
//    
    @PostMapping("/update/{id}")
    public String update(@PathVariable("id") Integer id, @ModelAttribute("district") District district) {
        districtService.update(id, district);
        return "redirect:/district";
    }
    
    @PostMapping("/insert")
    public String insert(@ModelAttribute("district") District district) {
        districtService.insert(district);
        return "redirect:/district";
    }
    
    @GetMapping("/insert")
    public String getForm() {
        return "district-insert-form";
    }
}
