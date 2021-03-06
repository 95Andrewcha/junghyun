package com.myspring.trip.controller;

import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.net.URLDecoder;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.imageio.ImageIO;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.myspring.trip.model.AdminBoardVO;
import com.myspring.trip.model.AdminVO;
import com.myspring.trip.model.AttachImageVO;
import com.myspring.trip.model.BoardVO;
import com.myspring.trip.model.Criteria;
import com.myspring.trip.model.PageMakerDTO;
import com.myspring.trip.service.AdminBoardService;
import com.myspring.trip.service.AdminService;
import com.myspring.trip.service.AttachService;
import com.myspring.trip.service.BoardService;



@Controller("adminBaordController")
@RequestMapping(value="/admin")
public class AdminBoardController {
	
		
		private static final Logger logger = LoggerFactory.getLogger(AdminController.class);

		@Autowired
		private AdminService adminService;
		
		@Autowired
		private AdminBoardService adminboardService;
		
		@Autowired
		private BoardService bservice;
		
		@Autowired
		private AttachService attachMapper;
		
		/* ???????????? ????????? ??????(????????? ??????) */
		@GetMapping("/admin_notice")
		public void boardListGET(Model model, Criteria cri) {
			
			
			logger.info("boardListGET");
			
			logger.info("cri : " + cri);
			
			model.addAttribute("list", adminService.getListPaging(cri));
			
			// ??? ?????? ????????? ??? ???
			int total = bservice.getTotal(cri);
			
			PageMakerDTO pageMake = new PageMakerDTO(cri, total);
			
			model.addAttribute("pageMaker", pageMake);
		
		}

		/* ???????????? ?????? ????????? ?????? */
		@GetMapping("/admin_notice_write")
		// => @RequestMapping(value="enroll", method=RequestMethod.GET)
		public void boardEnrollGET() {
			
			logger.info("????????? ?????? ????????? ??????");
			
		}
		
		/* ????????? ?????? */
		@PostMapping("/admin_notice_write")
		public String boardEnrollPOST(BoardVO board, RedirectAttributes rttr) {
			
			
			
			logger.info("BoardVO : " + board);
			
			adminService.notice_write(board);
			
		
			
			logger.info("BoardVO : " + board);
			
			rttr.addFlashAttribute("result", "notice_write success");
			
			return "redirect:/admin/admin_notice";
			
		}
		
		/* ???????????? ?????? */
		@GetMapping("/admin_notice2")
		public void boardGetPageGET(int board_seq, Model model, Criteria cri) {
			
			model.addAttribute("pageInfo", adminService.getPage(board_seq));
			
			model.addAttribute("cri", cri);
			
		}
		
		
		/* ???????????? ?????? ????????? ?????? */
		@GetMapping("/admin_modify")
		public void boardModifyGET(int board_seq, Model model, Criteria cri) {
			
			model.addAttribute("pageInfo", adminService.getPage(board_seq));
			
			model.addAttribute("cri", cri);
			
		} 
		
		/* ???????????? ????????? ?????? */
		@PostMapping("/admin_modify")
		public String boardModifyPOST(BoardVO board, RedirectAttributes rttr) {
			
			adminService.admin_modify(board);
			rttr.addFlashAttribute("result", "modify success");
			
			return "redirect:/admin/admin_notice";
			
		}

	/* ?????? ?????? ????????? */
	@PostMapping(value="/uploadAjaxAction", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ResponseEntity<List<AttachImageVO>> uploadAjaxActionPOST(MultipartFile[] uploadFile) {
		
		logger.info("uploadAjaxActionPOST..........");
		
		/* ????????? ?????? ?????? */
		for(MultipartFile multipartFile: uploadFile) {
			
			File checkfile = new File(multipartFile.getOriginalFilename());
			String type = null;
			 
			try {
				type = Files.probeContentType(checkfile.toPath());
				logger.info("MIME TYPE : " + type);
			} catch (IOException e) {
				e.printStackTrace();
			}
			
			if(!type.startsWith("image")) {
				List<AttachImageVO> list = null;
				return new ResponseEntity<>(list, HttpStatus.BAD_REQUEST);
			}
			
		}//for
		
		String uploadFolder = "C:\\upload";
		
		// ?????? ?????? ??????
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
		Date date = new Date();
		
		String str = sdf.format(date);
		
		String datePath = str.replace("-", File.separator);
		
		/* ?????? ?????? */
		File uploadPath = new File(uploadFolder, datePath);
		
		if(uploadPath.exists() == false) {
			uploadPath.mkdirs();
		}
		/* ????????? ?????? ?????? ?????? */
		List<AttachImageVO> list = new ArrayList();
		
		for(MultipartFile multipartFile : uploadFile) {
			
			/* ????????? ?????? ?????? */
			AttachImageVO vo = new AttachImageVO();
			
			/* ?????? ?????? */
			String uploadFileName = multipartFile.getOriginalFilename();
			vo.setFileName(uploadFileName);
			vo.setUploadPath(datePath);
			
			/* uuid ?????? ?????? ?????? */
			String uuid = UUID.randomUUID().toString();
			vo.setUuid(uuid);
			
			uploadFileName = uuid + "_" + uploadFileName;
			
			/* ?????? ??????, ?????? ????????? ?????? File ?????? */
			File saveFile = new File(uploadPath, uploadFileName);
			
			/* ?????? ?????? */
			try {
				multipartFile.transferTo(saveFile);
				File thumbnailFile = new File(uploadPath, "s_" + uploadFileName);
				BufferedImage bo_image = ImageIO.read(saveFile);

				/* ?????? */
				double ratio = 3;
				/*?????? ??????*/
				int width = (int) (bo_image.getWidth() / ratio);
				int height = (int) (bo_image.getHeight() / ratio);
				
				BufferedImage bt_image = new BufferedImage(width, height, BufferedImage.TYPE_3BYTE_BGR);
								
				Graphics2D graphic = bt_image.createGraphics();
				
				graphic.drawImage(bo_image, 0, 0,width,height, null);
					
				ImageIO.write(bt_image, "jpg", thumbnailFile);

			} catch (Exception e) {
				e.printStackTrace();
			} 		
			list.add(vo);
		}  //for
		ResponseEntity<List<AttachImageVO>> result = new ResponseEntity<List<AttachImageVO>>(list, HttpStatus.OK);
		return result;
	}
	
	@GetMapping("/display")	
	public ResponseEntity<byte[]> getImage(String fileName){
		logger.info("getImage()..........."+fileName);
		File file = new File("c:\\upload\\" + fileName);
		ResponseEntity<byte[]> result = null;
		
		try {
			
			HttpHeaders header = new HttpHeaders();
			
			header.add("Content-type", Files.probeContentType(file.toPath()));
			
			result = new ResponseEntity<>(FileCopyUtils.copyToByteArray(file), header, HttpStatus.OK);
			
		}catch (IOException e) {
			e.printStackTrace(); 
		}
		
		return result;
	}

	/* ????????? ?????? ?????? */
	@PostMapping("/deleteFile")
	public ResponseEntity<String> deleteFile(String fileName) {

		logger.info("deleteFile........" + fileName);

		File file = null;

		try {
			/* ????????? ?????? ?????? */
			file = new File("c:\\upload\\" + URLDecoder.decode(fileName, "UTF-8"));
			
			file.delete();
			
			/* ?????? ?????? ?????? */
			String originFileName = file.getAbsolutePath().replace("s_", "");
			
			logger.info("originFileName : " + originFileName);
			
			file = new File(originFileName);
			
			file.delete();
			
			
		} catch(Exception e) {
			
			e.printStackTrace();
			
			return new ResponseEntity<String>("fail", HttpStatus.NOT_IMPLEMENTED);
			
		} //catch
		return new ResponseEntity<String>("success", HttpStatus.OK);
	}
	/* ????????? ?????? ?????? */
	@GetMapping(value="/getAttachList", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ResponseEntity<List<AttachImageVO>> getAttachList(int board_seq){
		
		logger.info("getAttachList.........." + board_seq);
		
		return new ResponseEntity<List<AttachImageVO>>(attachMapper.getAttachList(board_seq), HttpStatus.OK);
		
	}


	
	@GetMapping("/main")
		public String main(@RequestParam("table_idx") int table_idx, Model model) {
			
			model.addAttribute("table_idx", table_idx);
			return "admin/main";
		}
		
		@GetMapping("notice/admin_board_write")
		public String admin_board_write(@ModelAttribute("writeContentBean") AdminBoardVO writeContentBean) {
			
			return "admin/admin_board_write";
		}
		
		@PostMapping("notice/admin_board_write_pro")
		public String admin_board_write_pro(@Valid @ModelAttribute("writeContentBean") AdminBoardVO writeContentBean, BindingResult result) {
			if(result.hasErrors()) {
				return "admin/admin_board_write";
			}
			
			adminboardService.addContentInfo(writeContentBean);
			
			return "admin/admin_write_success";
				
		}
	
		
		
}
