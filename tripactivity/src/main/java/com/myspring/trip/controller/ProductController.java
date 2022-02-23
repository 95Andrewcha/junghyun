package com.myspring.trip.controller;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.net.URLDecoder;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.myspring.trip.model.Ac_productVO;
import com.myspring.trip.model.Criteria;
import com.myspring.trip.model.ImageFileVO;
import com.myspring.trip.model.Le_productVO;
import com.myspring.trip.model.PageMakerDTO;
import com.myspring.trip.model.RoomVO;
import com.myspring.trip.model.TicketVO;
import com.myspring.trip.service.BoardService;
import com.myspring.trip.service.ProductService;

import net.coobird.thumbnailator.Thumbnails;

@Controller("productController")
@RequestMapping("/product")
public class ProductController {

	private static final Logger logger = LoggerFactory.getLogger(ProductController.class);

	@Autowired
	private ProductService productService;
	
	@Autowired
	private BoardService bservice;

	// 숙박 업체 관리 페이지
	@GetMapping("/ac_enrollManage")
	public void ac_enrollManage(Model model) throws Exception {
		logger.info("상품관리 페이지 입장");
	
		model.addAttribute("list", productService.ac_enrollList());
	}
	
	// 숙박업체 등록 페이지
	@RequestMapping(value = "/ac_Enroll", method = RequestMethod.GET)
	public void ac_Enroll() {
		logger.info("숙박업체등록 페이지 입장");
	}

	// 숙박 업체 등록 POST page
	@PostMapping("/ac_Enroll")
	public String ac_EnrollPOST(HttpServletRequest request, Ac_productVO ac_product, RedirectAttributes rttr) throws Exception {
		logger.info("ac_Enroll1POST....." + ac_product);

		productService.ac_Enroll(ac_product);

		rttr.addFlashAttribute("enroll_result", ac_product.getAc_CompanyName());

		return "redirect:/product/ac_enrollManage";
	}
	// 숙박업체 상세 조회, 수정하기 페이지
	@GetMapping({"/ac_enrollDetail", "/ac_enrollModify"})
	public void ac_enrollDetailGET(int ac_ProductNum, Model model) throws Exception {
		logger.info("ac_enrollDetailInfo().........." + ac_ProductNum);
				
		model.addAttribute("ac_enrollDetail", productService.ac_enrollDetail(ac_ProductNum));
	}
	
	//숙박 업체 수정하기 POST
	@PostMapping("/ac_enrollModify")
	public String ac_enrollModifyPOST(Ac_productVO ac_product, RedirectAttributes rttr) throws Exception {
		
		logger.info("ac_enrollModifyPOST.........." + ac_product);
		
		int result = productService.ac_enrollModify(ac_product);
		
		rttr.addFlashAttribute("modify_result", result);
		
		return "redirect:/product/ac_enrollManage";		
		
	}
	
	//숙박 업체 정보 삭제하기 POST
	@PostMapping("/ac_enrollDelete")
	public String ac_enrollDeletePOST(int ac_ProductNum, RedirectAttributes rttr) throws Exception {
		logger.info("ac_enrollDeletePOST..................");
		
		List<ImageFileVO> fileList = productService.getAttachAc_productInfo(ac_ProductNum);
		
		if(fileList != null) {
			List<Path> pathList = new ArrayList();
			
			fileList.forEach(vo ->{
				
				// 원본 이미지
				Path path = Paths.get("C:\\upload", vo.getUploadPath(), vo.getUuid() + "_" + vo.getFileName());
				pathList.add(path);
				
				// 섬네일 이미지
				path = Paths.get("C:\\upload", vo.getUploadPath(), "s_" + vo.getUuid()+"_" + vo.getFileName());
				pathList.add(path);
				
			});
			
			pathList.forEach(path ->{
				path.toFile().delete();
			});
		}
		
		int result = productService.ac_enrollDelete(ac_ProductNum);
		
		rttr.addFlashAttribute("delete_result", result);
		
		return "redirect:/product/ac_enrollManage";
	}

	
	// 객실 등록 POST page
	@PostMapping("/roomEnroll")
	public String roomEnrollPOST(HttpServletRequest request, RoomVO room, RedirectAttributes rttr) throws Exception {
		logger.info("roomEnroll1POST....." + room);

		productService.roomEnroll(room);

		rttr.addFlashAttribute("enroll_result", room.getAc_roomName());

		return "redirect:/product/roomManage";
	}
	// 객실 관리
	@GetMapping("/roomManage")
	public void roomManageGET(Model model) throws Exception {
		logger.info("객실 관리 페이지 입장");
		
		model.addAttribute("room", productService.roomList());
	}
	
	// 객실 상세 조회 , 객실 수정하기 페이지
	@GetMapping({"/roomDetail","/roomModify"})
	public void roomDetailGET(int ac_roomNum, Model model) throws Exception {
		logger.info("roomDetailInfo().........." + ac_roomNum);
		
		model.addAttribute("roomDetail", productService.roomDetail(ac_roomNum));
	}

	//객실 등록 페이지
	@RequestMapping(value = "/roomEnroll", method = RequestMethod.GET)
	public void roomEnroll() throws Exception {
		logger.info("객실등록 페이지 입장");
	}
	
	//객실 수정하기 POST
	@PostMapping("/roomModify")
	public String roomModifyPOST(RoomVO room, RedirectAttributes rttr) throws Exception {
		
		logger.info("roomModifyPOST.........." + room);
		
		int result = productService.roomModify(room);
		
		rttr.addFlashAttribute("modify_result", result);
		
		return "redirect:/product/roomManage";		
		
	}
	
	//객실 정보 삭제하기 POST
	@PostMapping("/roomDelete")
	public String roomDeletePOST(int ac_roomNum, RedirectAttributes rttr) throws Exception {
		logger.info("roomDelete..................");
		
		List<ImageFileVO> fileList = productService.getAttachRoomInfo(ac_roomNum);
		
		if(fileList != null) {
			List<Path> pathList = new ArrayList();
			
			fileList.forEach(vo ->{
				
				// 원본 이미지
				Path path = Paths.get("C:\\upload", vo.getUploadPath(), vo.getUuid() + "_" + vo.getFileName());
				pathList.add(path);
				
				// 섬네일 이미지
				path = Paths.get("C:\\upload", vo.getUploadPath(), "s_" + vo.getUuid()+"_" + vo.getFileName());
				pathList.add(path);
				
			});
			
			pathList.forEach(path ->{
				path.toFile().delete();
			});
		}
		
		int result = productService.roomDelete(ac_roomNum);
		
		rttr.addFlashAttribute("delete_result", result);
		
		return "redirect:/product/roomManage";
	}

	//레저 업체 등록 페이지
	@RequestMapping(value = "/le_Enroll", method = RequestMethod.GET)
	public void le_Enroll() throws Exception {
		logger.info("레저업체등록 페이지 입장");
	}
	
	//레저 업체 등록 POST
	@PostMapping("/le_Enroll")
	public String le_EnrollPOST(HttpServletRequest request, Le_productVO le_product, RedirectAttributes rttr) throws Exception {
		logger.info("le_EnrollPOST................");
		
		productService.le_Enroll(le_product);
		
		rttr.addFlashAttribute("enroll_result", le_product.getCompany_Name());
		
		return "redirect:/product/le_enrollManage";
	}
	
	//레저 업체 관리 페이지
	@GetMapping("/le_enrollManage")
	public void le_enrollManage(Model model) throws Exception {
		logger.info("상품관리 페이지 입장");
	
		model.addAttribute("list", productService.le_enrollList());
	}
	
	// 레저업체 상세 조회, 수정하기 페이지
	@GetMapping({"/le_enrollDetail", "/le_enrollModify"})
	public void le_enrollDetailGET(int le_ProductNum, Model model) throws Exception {
		logger.info("le_enrollDetailInfo().........." + le_ProductNum);
				
		model.addAttribute("le_enrollDetail", productService.le_enrollDetail(le_ProductNum));
	}
	
	//레저 업체 수정하기 POST
	@PostMapping("/le_enrollModify")
	public String le_enrollModifyPOST(Le_productVO le_product, RedirectAttributes rttr) throws Exception {
		logger.info("le_enrollModifyPOST............");
		
		int result = productService.le_enrollModify(le_product);
		
		rttr.addFlashAttribute("modify_result", result);
		
		return "redirect:/product/le_enrollManage";
	}
	
	//레저 업체 정보 삭제하기 POST
	@PostMapping("/le_enrollDelete")
	public String le_enrollDeletePOST(int le_ProductNum, RedirectAttributes rttr) throws Exception {
		logger.info("le_enrollDeletePOST..................");
		
		List<ImageFileVO> fileList = productService.getLe_productImageInfo(le_ProductNum);
		
		if(fileList != null) {
			List<Path> pathList = new ArrayList();
			
			fileList.forEach(vo ->{
				
				// 원본 이미지
				Path path = Paths.get("C:\\upload", vo.getUploadPath(), vo.getUuid() + "_" + vo.getFileName());
				pathList.add(path);
				
				// 섬네일 이미지
				path = Paths.get("C:\\upload", vo.getUploadPath(), "s_" + vo.getUuid()+"_" + vo.getFileName());
				pathList.add(path);
				
			});
			
			pathList.forEach(path ->{
				path.toFile().delete();
			});
		}
		
		List<ImageFileVO> fileList2 = productService.getLe_explanationImageInfo(le_ProductNum);
		
		if(fileList2 != null) {
			List<Path> pathList2 = new ArrayList();
			
			fileList2.forEach(vo ->{
				
				// 원본 이미지
				Path path = Paths.get("C:\\upload", vo.getUploadPath(), vo.getUuid() + "_" + vo.getFileName());
				pathList2.add(path);
				
				// 섬네일 이미지
				path = Paths.get("C:\\upload", vo.getUploadPath(), "s_" + vo.getUuid()+"_" + vo.getFileName());
				pathList2.add(path);
				
			});
			
			pathList2.forEach(path ->{
				path.toFile().delete();
			});
		}
		
		int result = productService.le_enrollDelete(le_ProductNum);
		
		rttr.addFlashAttribute("delete_result", result);
		
		return "redirect:/product/le_enrollManage";
	}
	
	//티켓 등록 페이지
	@RequestMapping(value = "/ticketEnroll", method = RequestMethod.GET)
	public void ticketEnroll() throws Exception {
		logger.info("객실등록 페이지 입장");
	}
	
	//티켓 등록 POST
	@PostMapping("/ticketEnroll")
	public String ticketEnrollPOST(HttpServletRequest request, TicketVO ticket, RedirectAttributes rttr) throws Exception {
		logger.info("ticketEnrollPOST............." + ticket);
		
		productService.ticketEnroll(ticket);
		
		rttr.addFlashAttribute("enroll_result", ticket.getLe_ticketName());
		
		return "redirect:/product/ticketManage";
	}
	
	//티켓 관리 페이지
	@GetMapping("/ticketManage")
	public void ticketManageGET(Model model) throws Exception {
		logger.info("티켓 관리 페이지 입장");
		
		model.addAttribute("ticketList", productService.ticketList());
	}
	
	// 티켓 상세 조회, 수정하기 페이지
	@GetMapping({"/ticketDetail", "/ticketModify"})
	public void ticketDetailGET(int le_ticketNum, Model model) throws Exception {
		logger.info("ticketDetailInfo().........." + le_ticketNum);
				
		model.addAttribute("ticketDetail", productService.ticketDetail(le_ticketNum));
	}
	
	//티켓 수정하기 POST
	@PostMapping("/ticketModify")
	public String ticketModifyPOST(TicketVO ticket, RedirectAttributes rttr) throws Exception {
		
		logger.info("ticketModifyPOST...............");
		
		int result = productService.ticketModify(ticket);
		
		rttr.addFlashAttribute("modify_result", result);
		
		return "redirect:/product/ticketManage";
	}

	/* 첨부 파일 업로드 */
	@PostMapping(value="/uploadAjaxAction", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ResponseEntity<List<ImageFileVO>> uploadAjaxActionPOST(MultipartFile[] uploadFile) throws Exception {
		
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
				
				List<ImageFileVO> list = null;
				return new ResponseEntity<>(list, HttpStatus.BAD_REQUEST);
				
			}
			
		}// for
		
		String uploadFolder = "C:\\upload";

		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

		Date date = new Date();

		String str = sdf.format(date);

		String datePath = str.replace("-", File.separator);

		/* 폴더 생성 */
		File uploadPath = new File(uploadFolder, datePath);

		if (uploadPath.exists() == false) {
			uploadPath.mkdirs();
		}
		
		//이미지 정보 담는 객체
		List<ImageFileVO> list = new ArrayList();

		// 기본 for
		for (int i = 0; i < uploadFile.length; i++) {
			logger.info("-----------------------------------------------");
			logger.info("파일 이름 : " + uploadFile[i].getOriginalFilename());
			logger.info("파일 타입 : " + uploadFile[i].getContentType());
			logger.info("파일 크기 : " + uploadFile[i].getSize());
			
			//이미지 정보 객체
			ImageFileVO imgvo = new ImageFileVO();
			
			MultipartFile multipartFile = uploadFile[i];
			/* 파일 이름 */
			String uploadFileName = multipartFile.getOriginalFilename();
			imgvo.setFileName(uploadFileName);
			imgvo.setUploadPath(datePath);

			/* uuid 적용 파일 이름 */
			String uuid = UUID.randomUUID().toString();
			imgvo.setUuid(uuid);

			uploadFileName = uuid + "_" + uploadFileName;

			/* 파일 위치, 파일 이름을 합친 File 객체 */
			File saveFile = new File(uploadPath, uploadFileName);

			/* 파일 저장 */
			try {
				multipartFile.transferTo(saveFile);
				
				/* 방법 2 */
				File thumbnailFile = new File(uploadPath, "s_" + uploadFileName);	
				
				BufferedImage bo_image = ImageIO.read(saveFile);

					//비율 
					double ratio = 4;
					//넓이 높이
					int width = (int) (bo_image.getWidth() / ratio);
					int height = (int) (bo_image.getHeight() / ratio);					
				
				
				Thumbnails.of(saveFile)
		        .size(width, height)
		        .toFile(thumbnailFile);

			} catch (Exception e) {
				e.printStackTrace();
			}
			list.add(imgvo);
		}// for
		ResponseEntity<List<ImageFileVO>> result = new ResponseEntity<List<ImageFileVO>>(list, HttpStatus.OK);
		
		return result;
	}
	
	/* 첨부 파일 업로드 */
	@PostMapping(value="/uploadAjaxAction2", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ResponseEntity<List<ImageFileVO>> uploadAjaxAction2POST(MultipartFile[] uploadFile2) throws Exception {
		
		/* 이미지 파일 체크 */
		for(MultipartFile multipartFile: uploadFile2) {
			
			File checkfile = new File(multipartFile.getOriginalFilename());
			String type = null;
			
			try {
				type = Files.probeContentType(checkfile.toPath());
				logger.info("MIME TYPE : " + type);
			} catch (IOException e) {
				e.printStackTrace();
			}
			
			if(!type.startsWith("image")) {
				
				List<ImageFileVO> list2 = null;
				return new ResponseEntity<>(list2, HttpStatus.BAD_REQUEST);
				
			}
			
		}// for
		
		String uploadFolder = "C:\\upload";

		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

		Date date = new Date();

		String str = sdf.format(date);

		String datePath = str.replace("-", File.separator);

		/* 폴더 생성 */
		File uploadPath = new File(uploadFolder, datePath);

		if (uploadPath.exists() == false) {
			uploadPath.mkdirs();
		}
		
		//이미지 정보 담는 객체
		List<ImageFileVO> list2 = new ArrayList();

		// 기본 for
		for (int i = 0; i < uploadFile2.length; i++) {
			logger.info("-----------------------------------------------");
			logger.info("파일 이름 : " + uploadFile2[i].getOriginalFilename());
			logger.info("파일 타입 : " + uploadFile2[i].getContentType());
			logger.info("파일 크기 : " + uploadFile2[i].getSize());
			
			//이미지 정보 객체
			ImageFileVO imgvo2 = new ImageFileVO();
			
			MultipartFile multipartFile = uploadFile2[i];
			/* 파일 이름 */
			String uploadFileName = multipartFile.getOriginalFilename();
			imgvo2.setFileName(uploadFileName);
			imgvo2.setUploadPath(datePath);

			/* uuid 적용 파일 이름 */
			String uuid = UUID.randomUUID().toString();
			imgvo2.setUuid(uuid);

			uploadFileName = uuid + "_" + uploadFileName;

			/* 파일 위치, 파일 이름을 합친 File 객체 */
			File saveFile = new File(uploadPath, uploadFileName);

			/* 파일 저장 */
			try {
				multipartFile.transferTo(saveFile);
				
				/* 방법 2 */
				File thumbnailFile = new File(uploadPath, "s_" + uploadFileName);	
				
				BufferedImage bo_image = ImageIO.read(saveFile);

					//비율 
					double ratio = 4;
					//넓이 높이
					int width = (int) (bo_image.getWidth() / ratio);
					int height = (int) (bo_image.getHeight() / ratio);					
				
				
				Thumbnails.of(saveFile)
		        .size(width, height)
		        .toFile(thumbnailFile);

			} catch (Exception e) {
				e.printStackTrace();
			}
			list2.add(imgvo2);
		}// for
		ResponseEntity<List<ImageFileVO>> result = new ResponseEntity<List<ImageFileVO>>(list2, HttpStatus.OK);
		
		return result;
	}
	
	/* 이미지 파일 삭제 */
	@PostMapping("/deleteFile")
	public ResponseEntity<String> deleteFile(String fileName) throws Exception {
		
		logger.info("deleteFile........" + fileName);
		
		File file = null;
		
		try {
			
			//썸네일 파일 삭제
			file = new File("C:\\upload\\" + URLDecoder.decode(fileName, "UTF-8"));
			
			file.delete();
			
			/* 원본 파일 삭제 */
			String originFileName = file.getAbsolutePath().replace("s_", "");
			
			logger.info("originFileName : " + originFileName);
			
			file = new File(originFileName);
			
			file.delete();
			
		} catch(Exception e) {
			
			e.printStackTrace();
			return new ResponseEntity<String>("fail", HttpStatus.NOT_IMPLEMENTED);
		}//catch
		
		return new ResponseEntity<String>("success", HttpStatus.OK);
	}
	
	//숙박 업체 리스트 GET
	@GetMapping({"/ac_productList", "search"})
	public String ac_productList(Criteria cri, Model model) throws Exception {
		logger.info("ac_productList() 페이지 입장" + cri);
		
		//숙박 업체 목록 리스트
		List list = productService.ac_productList(cri);
				
		if(!list.isEmpty()) {
			model.addAttribute("ac_productList",list); //숙박 상품이 존재하는 경우
		} else {
			model.addAttribute("ac_productListCheck", "empty"); //숙박 상품이 존재하지 않는 경우
			
			return "/product/ac_productList";
		}
		
		int total = productService.ac_productListTotal(cri);
		
		PageMakerDTO pageMaker = new PageMakerDTO(cri, total);
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "/product/ac_productList";
	}
	
	//숙박 상품 자세히 보기 페이지
	@GetMapping("/ac_productDetail")
	public String ac_productDetail(int ac_ProductNum, Model model, Criteria cri) throws Exception {
		logger.info("숙박 상품 상세보기 페이지 진입!!");
		
		model.addAttribute("list", bservice.product_inquiry(cri));

		int total = bservice.igetTotals(cri);

		PageMakerDTO pageMake = new PageMakerDTO(cri, total);

		model.addAttribute("pageMaker", pageMake);
		
		model.addAttribute("ac_enrollDetail", productService.ac_enrollDetail(ac_ProductNum));
		
		List imageList = productService.getAc_productsInfo(ac_ProductNum);
		
		model.addAttribute("ac_enrollDetail2", imageList);
		
		List list = productService.ac_roomList(ac_ProductNum);
		
		model.addAttribute("ac_roomList", list);
		
		return "/product/ac_productDetail";
				
	}
	
	//레저 리스트 페이지
	@GetMapping("/le_productList")
	public String le_productListGET(Criteria cri, Model model) throws Exception{
		logger.info("le_productListGET 페이지 입장.............");
		
		//레저 업체 목록 리스트
		List list = productService.le_productList(cri);
				
		if(!list.isEmpty()) {
			model.addAttribute("le_productList",list); //숙박 상품이 존재하는 경우
		} else {
			model.addAttribute("le_productListCheck", "empty"); //숙박 상품이 존재하지 않는 경우
			
			return "/product/le_productList";
		}
		
		int total = productService.le_productListTotal(cri);
		
		PageMakerDTO pageMaker = new PageMakerDTO(cri, total);
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "/product/le_productList";
	}
	
	//레저 상품 상세페이지
	@GetMapping("/le_productDetail")
	public void le_productDetailGET() throws Exception{
		
	}
}
