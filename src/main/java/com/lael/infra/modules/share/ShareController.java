package com.lael.infra.modules.share;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


@Controller
public class ShareController {

	@Autowired
	ShareServiceImpl service;
	
	 private void setSearchAndPaging(ShareVo vo) throws Exception {
		  vo.setShDelNy(vo.getShDelNy() == null ? 0: vo.getShDelNy());
		  vo.setParamsPaging(service.selectOneCount(vo)); 
	  }
	 
	 // 유저
	
	 @RequestMapping(value = "/")
	 public String shareMain() throws Exception {
		return "infra/share/main/shareMain";
	}
	 
  @RequestMapping(value = "/share")
	public String main() throws Exception {
		return "infra/share/user/shareLogDone";
	}
	
	@RequestMapping(value = "/shareHot")
	public String shareHot() throws Exception {
		return "infra/share/user/shareHot";
	}

	
	@RequestMapping(value = "/sharePot")
	public String sharePot( @ModelAttribute("vo") ShareVo vo, Model model, Share dto) throws Exception {
		
		setSearchAndPaging(vo); 
		
		List<Share> list = service.selectList(vo);
		model.addAttribute("list", list); 
		
		return "infra/share/user/sharePot";
	}
	
	@RequestMapping(value = "/shareNow")
	public String shareContent(@ModelAttribute("vo") ShareVo vo, Model model) throws Exception {
		
		Share item = service.selectOne(vo);
		  model.addAttribute("item", item);
		
		return "infra/share/user/shareNow";
	}
	
	@RequestMapping(value = "/shareInst")
	public String shareInst(ShareVo vo, Share dto, RedirectAttributes redirectAttributes) throws Exception {

		service.insert(dto);
		
		vo.setSeq(dto.getSeq());
		redirectAttributes.addFlashAttribute("vo", vo); 

		return "redirect:/shareNow";
	}
	
	@RequestMapping(value = "/shareUpdt")
	public String shareUpdt(ShareVo vo, Share dto, RedirectAttributes redirectAttributes) throws Exception {

		service.insert(dto);
		
		redirectAttributes.addFlashAttribute("vo", vo); 
		return "redirect:/sharePot";
	}
	
	@RequestMapping(value = "/shareMyPage")
	public String shareMyPage() throws Exception {
		return "infra/share/user/shareMyPage";
	}
	
	@RequestMapping(value = "/shareMyPageInst")
	public String shareMyPageInst() throws Exception {
		return "redirect:/shareMyPage";
	}
	
	@RequestMapping(value = "/shareLikeList")
	public String shareLikeList() throws Exception {
		return "infra/share/user/shareLikeList";
	}
	
}