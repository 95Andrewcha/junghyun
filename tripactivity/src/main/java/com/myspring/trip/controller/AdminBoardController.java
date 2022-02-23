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
		
		/* 공지사항 페이지 접속(페이징 적용) */
		@GetMapping("/admin_notice")
		public void boardListGET(Model model, Criteria cri) {
			
			
			logger.info("boardListGET");
			
			logger.info("cri : " + cri);
			
			model.addAttribute("list", adminService.getListPaging(cri));
			
			// 총 갯수 다르게 할 것
			int total = bservice.getTotal(cri);
			
			PageMakerDTO pageMake = new PageMakerDTO(cri, total);
			
			model.addAttribute("pageMaker", pageMake);
		
		}

		/* 공지사항 등록 페이지 접속 */
		@GetMapping("/admin_notice_write")
		// => @RequestMapping(value="enroll", method=RequestMethod.GET)
		public void boardEnrollGET() {
			
			logger.info("게시판 등록 페이지 진입");
			
		}
		
		/* 게시판 등록 */
		@PostMapping("/admin_notice_write")
		public String boardEnrollPOST(BoardVO board, RedirectAttributes rttr) {
			
			
			
			logger.info("BoardVO : " + board);
			
			adminService.notice_write(board);
			
		
			
			logger.info("BoardVO : " + board);
			
			rttr.addFlashAttribute("result", "notice_write success");
			
			return "redirect:/admin/admin_notice";
			
		}
		
		/* 공지사항 조회 */
		@GetMapping("/admin_notice2")
		public void boardGetPageGET(int board_seq, Model model, Criteria cri) {
			
			model.addAttribute("pageInfo", adminService.getPage(board_seq));
			
			model.addAttribute("cri", cri);
			
		}
		
		
		/* 공지사항 수정 페이지 이동 */
		@GetMapping("/admin_modify")
		public void boardModifyGET(int board_seq, Model model, Criteria cri) {
			
			model.addAttribute("pageInfo", adminService.getPage(board_seq));
			
			model.addAttribute("cri", cri);
			
		} 
		
		/* 공지사항 페이지 수정 */
		@PostMapping("/admin_modify")
		public String boardModifyPOST(BoardVO board, RedirectAttributes rttr) {
			
			adminService.admin_modify(board);
			rttr.addFlashAttribute("result", "modify success");
			
			return "redirect:/admin/admin_notice";
			
		}

	/* 첨부 파일 업로드 */
	@PostMapping(value="/uploadAjaxAction", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ResponseEntity<List<AttachImageVO>> uploadAjaxActionPOST(MultipartFile[] uploadFile) {
		
		logger.info("uploadAjaxActionPOST..........");
		
		/* 이미지 파일 체크 */
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
		
		// 날짜 폴더 경로
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
		Date date = new Date();
		
		String str = sdf.format(date);
		
		String datePath = str.replace("-", File.separator);
		
		/* 폴더 생성 */
		File uploadPath = new File(uploadFolder, datePath);
		
		if(uploadPath.exists() == false) {
			uploadPath.mkdirs();
		}
		/* 이미저 정보 담는 객체 */
		List<AttachImageVO> list = new ArrayList();
		
		for(MultipartFile multipartFile : uploadFile) {
			
			/* 이미지 정보 객체 */
			AttachImageVO vo = new AttachImageVO();
			
			/* 파일 이름 */
			String uploadFileName = multipartFile.getOriginalFilename();
			vo.setFileName(uploadFileName);
			vo.setUploadPath(datePath);
			
			/* uuid 적용 파일 이름 */
			String uuid = UUID.randomUUID().toString();
			vo.setUuid(uuid);
			
			uploadFileName = uuid + "_" + uploadFileName;
			
			/* 파일 위치, 파일 이름을 합친 File 객체 */
			File saveFile = new File(uploadPath, uploadFileName);
			
			/* 파일 저장 */
			try {
				multipartFile.transferTo(saveFile);
				File thumbnailFile = new File(uploadPath, "s_" + uploadFileName);
				BufferedImage bo_image = ImageIO.read(saveFile);

				/* 비율 */
				double ratio = 3;
				/*넓이 높이*/
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

	/* 이미지 파일 삭제 */
	@PostMapping("/deleteFile")
	public ResponseEntity<String> deleteFile(String fileName) {

		logger.info("deleteFile........" + fileName);

		File file = null;

		try {
			/* 썸네일 파일 삭제 */
			file = new File("c:\\upload\\" + URLDecoder.decode(fileName, "UTF-8"));
			
			file.delete();
			
			/* 원본 파일 삭제 */
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
	/* 이미지 정보 반환 */
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
