package com.example.baitap2.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.HashMap;
import java.util.Map;

@Controller
public class DictionaryController {
    private final Map<String, String> dictionary = new HashMap<>();

    public DictionaryController() {
        dictionary.put("hello", "xin chào");
        dictionary.put("world", "thế giới");
        dictionary.put("spring", "mùa xuân");
        dictionary.put("mvc", "Mô hình MVC");
    }

    @RequestMapping("/index")
    public String home() {
        return "index";
    }

    @RequestMapping("/search")
    public String search(@RequestParam String word, Model model) {
        String vietnameseMeaning = dictionary.get(word);
        model.addAttribute("searchedWord", word);
        model.addAttribute("vietnameseMeaning", vietnameseMeaning);

        return "index";
    }
}
