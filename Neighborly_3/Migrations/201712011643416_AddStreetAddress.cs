namespace Neighborly_3.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AddStreetAddress : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.AspNetUsers", "StreetAddress", c => c.String());
        }
        
        public override void Down()
        {
            DropColumn("dbo.AspNetUsers", "StreetAddress");
        }
    }
}
