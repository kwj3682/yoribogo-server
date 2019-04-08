package kr.co.yoribogo.admin.notice.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;

import kr.co.yoribogo.common.db.MyAppSqlConfig;
import kr.co.yoribogo.repository.dao.AdminMapper;
import kr.co.yoribogo.repository.vo.BannerVO;
import kr.co.yoribogo.utility.FunnyFileRenamePolicy;



@WebServlet("/admin/notice/insertbanner.do")
public class AdminInsertBannerController extends HttpServlet  {
	

private AdminMapper mapper;


public AdminInsertBannerController() {
	mapper = MyAppSqlConfig.getSqlSession().getMapper(AdminMapper.class);
}

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		/* 저장경로 
		String uploadRoot = "c:/bit2019/yoribogo/img";
		SimpleDateFormat sdf = new SimpleDateFormat(
				"/yyyy/MM/dd"
				);
		
		
		String path = "/banner" + sdf.format(new Date()); */
		//File file = new File(uploadRoot + path); 
		File file = new File("c:/bit2019/yoribogo/test/banner/img"); 
		if (file.exists() == false) file.mkdirs();
		
		
		MultipartRequest mRequest = new MultipartRequest(
				request, 
				"c:/bit2019/yoribogo/test/banner/img",  
				1024 * 1024 * 100,   
				"utf-8", // 
				new FunnyFileRenamePolicy()
		);
		
		
		BannerVO banner = new BannerVO();
		
		//파일이 있으면 저장하고 
		File f = mRequest.getFile("banner");
		if (f != null) {
			banner.setLink(mRequest.getOriginalFileName("banner"));
		}
				
		banner.setTitle(mRequest.getParameter("title"));
		banner.setContent(mRequest.getParameter("content"));
		mapper.insertBanner(banner);
		
		//작성하고 메인으로 가는지 아니면 걍 다시 배너 등록 창으로 오는지 
		response.sendRedirect(request.getContextPath()+"/admin/notice/insertbanner.jsp");
		//response.sendRedirect(request.getContextPath() + "/admin/insertbanner.jsp");
	}
	
}
