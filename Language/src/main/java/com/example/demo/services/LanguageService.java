package com.example.demo.services;

import com.example.demo.models.Language;
import com.example.demo.repositories.LanguageRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
@Service
public class LanguageService {
    private final LanguageRepository languageRepository;


    public LanguageService(LanguageRepository languageRepository) {
        this.languageRepository = languageRepository;
    }
    public List<Language> allLanguages(){
        return languageRepository.findAll();

    }
    public Language creatLanguage(Language b){
        return  languageRepository.save(b);
    }

    public  Language findLanguage(Long id){
        Optional<Language> optionalLanguage = languageRepository.findById(id);
        return optionalLanguage.orElse(null);
    }

    public void deleteLanguage(Long id){
        languageRepository.deleteById(id);
    }
    public Language updateLanguage(Long id, String name, String creator, String version){
        Language l= findLanguage(id);
        l.setName(name);
        l.setCreator(creator);
        l.setVersion(version);
        System.out.println("*********************************************************");
        return  languageRepository.save(l);
    }


//    public void updateLanguage(Language language) {
//        Optional<Language> optionalLanguage = languageRepository.findById(language.getId());
//        if (optionalLanguage.isPresent()){
//            Language l=optionalLanguage.get();
//            l.setName(language.getName());
//
//        }




}
