package com.example.demo.controllers;


import com.example.demo.models.Language;
import com.example.demo.services.LanguageService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;
import java.util.List;

@Controller
public class HomeController {
    private final LanguageService languageService;

    public HomeController(LanguageService languageService) {
        this.languageService = languageService;
    }

    @RequestMapping("/languages")
    public String index(Model model, @ModelAttribute("language") Language language) {
        List<Language> languages = languageService.allLanguages();
        model.addAttribute("languages", languages);
        return "index.jsp";
    }

    @RequestMapping(value = "/languages", method = RequestMethod.POST)
    public String create(@Valid @ModelAttribute("language") Language language, BindingResult result) {
        if (result.hasErrors()) {
            return "index.jsp";
        } else {
            languageService.creatLanguage(language);
            return "redirect:/languages";
        }
    }
    @RequestMapping("/languages/edit/{id}")
    public  String edit(@PathVariable("id") Long id , Model model){
        Language lang= languageService.findLanguage(id);
        model.addAttribute("language",lang);
        return "edit.jsp";
    }
    @RequestMapping(value ="/languages/{id}", method = RequestMethod.PUT)
    public String update(@Valid @ModelAttribute("language") Language language, BindingResult result){

        if (result.hasErrors()) {
            return "edit.jsp";
        } else {
            languageService.updateLanguage(language.getId(),language.getName(),language.getCreator(),language.getVersion());
            return "redirect:/languages     ";
        }

    }
    @RequestMapping("/language/{id}/show")
    public String show(@PathVariable("id")Long id , Model model){
        Language lang= languageService.findLanguage(id);
        model.addAttribute("language",lang);
        return "show.jsp";
    }



    @RequestMapping(value = "/language/{id}", method = RequestMethod.DELETE)
    public String delete(@PathVariable("id") Long id) {
        languageService.deleteLanguage(id);
        return "redirect:/languages";
    }


}
