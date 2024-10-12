package com.project.HRBM.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.HRBM.Model.Booking;
import com.project.HRBM.Model.Room;
import com.project.HRBM.Repo.BookingRepo;
import com.project.HRBM.Repo.RoomRepo;

@Controller
public class ControllerHRBM 
{
	@Autowired
	private RoomRepo RR;
	
	@Autowired 
	private BookingRepo BR;
	
	@RequestMapping("/")
	public String isLand()
	{
		return "AddRoom.jsp";
	}
	@RequestMapping("/RF")
	public String isLRD()
	{
		return "RoomDetails.jsp";
	}
	@RequestMapping("/R")
	public String isR()
	{
		return "Rooms.jsp";
	}
	@RequestMapping("/BR")
	public String isBR()
	{
		return "BuyRoom.jsp";
	}
	@RequestMapping("/UR")
	public String isUR()
	{
		return "Update.jsp";
	}
	@RequestMapping("/AddRoom")
	public String isAR(@ModelAttribute Room R,Model m)
	{
		if(RR!=null)
		{
			RR.save(R);
			m.addAttribute("success", "Room Added Successfully.!");
			return "/";
		}
		else
		{
			m.addAttribute("success", "Room Not Added Something Went wrong.!");
			return "/";
		}
	}
	@RequestMapping("/RD")
	public String isRD(Model m)
	{
		List<Room> LR = RR.findAll();
		m.addAttribute("R", LR);
		return "/RF";
	}
	@RequestMapping("/RS")
	public String isRS(Model m)
	{
		List<Room> LR = RR.findAll();
		m.addAttribute("R", LR);
		return "/R";
	}
	@RequestMapping("/{id}")
	public String isUp(@PathVariable int id,Model m)
	{
		Room R=RR.findById(id).orElse(null);
		m.addAttribute("data", R);
		return "/UR";
	}
	@RequestMapping("/UpRoom")
	public String isUPR(@ModelAttribute Room r,RedirectAttributes RA)
	{
		Room R=RR.findById(r.getRoomId()).orElse(null);
		R.setRoomType(r.getRoomType());
		R.setAvailable(r.getAvailable());
		R.setPrice(r.getPrice());
		if(RR!=null)
		{
			RR.save(R);
			RA.addFlashAttribute("up", "Data updated successufully.!");
			return "redirect:/RD";
		}
		else
		{
			RA.addFlashAttribute("up", "Data not updated");
			return "redirect:/RD";
		}
		
	}
	@RequestMapping("Delete/{id}")
	public String isDel(@PathVariable int id,Model m,RedirectAttributes RA)
	{
		RR.deleteById(id);
		RA.addFlashAttribute("up", "Data Deleted successufully.!");
		return "redirect:/RD";
	}
	@RequestMapping("Buy/{id}")
	public String isBuy(@PathVariable int id,Model m)
	{
		Room r = RR.findById(id).orElse(null);
		m.addAttribute("d", r);
		return "/BR";
	}
	@RequestMapping("/BuyRoom")
	public String isBuR(@ModelAttribute Booking B,Model m)
	{
		Room r = RR.getById(B.getRoomId());
		if(r!=null)
		{
			BR.save(B);
			r.setAvailable("no");
			RR.save(r);
			m.addAttribute("success", "Room booked successfully.!");
		}
		return "BuyRoom.jsp";
	}
	@RequestMapping("/SR")
	public String isSR(Model m)
	{
		List<Booking> LB = BR.findAll();
		m.addAttribute("cus", LB);
		return "SeeRoom.jsp";
	}
	@RequestMapping("Delete/{roomId}/{bookingId}")
	public String isRC(@PathVariable("roomId") int roomId,@PathVariable("bookingId") int bookingId,Model m)
	{
		Room r = RR.getById(roomId);
		if(r!=null)
		{
			r.setAvailable("yes");
			RR.save(r);
			BR.deleteById(bookingId);
			m.addAttribute("up", "Request Cancel Suceessfuly.!");
		}
		return "/SR";
	}
}
