package org.kosta.finalproject.controller;

import org.kosta.finalproject.model.domain.FAQVO;
import org.kosta.finalproject.model.service.FAQService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FAQController {
	@Autowired
	private FAQService faqService;

	@RequestMapping("faqBoard")
	public String faqBoard(Model model) {
		// 글 총 갯수 불러오기
		model.addAttribute("TotalFAQCount", faqService.getTotalFAQCount());

		// 전체 글 불러오기
		model.addAttribute("list", faqService.getAllFAQList());
		return "faq/faq-board.tiles";
	}

	// faq 작성 화면
	@RequestMapping("faq-write-form")
	public String writeFAQForm(Model model) {
		return "faq/faq-write-form.tiles";
	}

	@PostMapping("writeFAQ")
	public String writeFAQ(FAQVO faqVO) {
		faqService.writeFAQ(faqVO);
		return "redirect:faqBoard";

	}

}
