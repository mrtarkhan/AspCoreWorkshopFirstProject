using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using AspCoreWorkshopFirstProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace AspCoreWorkshopFirstProject.Controllers
{
	public class UserAccountController : Controller
	{
		public IActionResult Index ()
		{
			//لیستی از نوع مورد نظر ایجاد می کنیم
			List<UserAccount> users = new List<UserAccount>();

			//به پایگاه داده وصل می شویم
			using (var context = new AspCoreWorkshopFirstProjectContext())
			{
				//اطلاعات را می گیریم، بعدا توضیح داده می شود
				users = context.Users.Where(e => true).Select(e => e).ToList();
			}

			//مدل مورد نظر را به ویو ارسال می کنیم
			return View(users);
		}

		[HttpPost]
		public IActionResult AddUser ([FromForm] UserAccount user)
		{
			using (var context = new AspCoreWorkshopFirstProjectContext())
			{

				context.Users.Add(user);
				context.SaveChanges();
			}

			return RedirectToAction(nameof(Index));

		}

	}
}