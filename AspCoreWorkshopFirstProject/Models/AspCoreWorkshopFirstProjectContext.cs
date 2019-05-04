using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AspCoreWorkshopFirstProject.Models
{
	public class AspCoreWorkshopFirstProjectContext : DbContext
	{

		public DbSet<UserAccount> Users { get; set; }


		public AspCoreWorkshopFirstProjectContext ()
		{
		}

		protected override void OnConfiguring (DbContextOptionsBuilder builder)
		{
			builder.UseSqlServer(@"Server=192.168.99.100;Database=dbAspCoreWorkshopFirstProjectDb;User Id=sa;Password=saPass@1344;");
		}

		protected override void OnModelCreating (ModelBuilder modelBuilder)
		{
			base.OnModelCreating(modelBuilder);


		}

	}
}
