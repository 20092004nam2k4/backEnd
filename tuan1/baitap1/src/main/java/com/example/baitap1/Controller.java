package com.example.baitap1;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@org.springframework.stereotype.Controller
public class Controller {
    @GetMapping("nana")
    public String kaka(){
        return "index";
    }
    @GetMapping("/convert")
    public String calculate(@RequestParam("usd")int money, @RequestParam("rate") int rate, Model model){
        if (rate >=2300){
            int value = money * rate;
            model.addAttribute("number",value);
        }else {
            model.addAttribute("wrong","loi ! rate phai lon hon 23000");
        }
        return "index";
    }
}
