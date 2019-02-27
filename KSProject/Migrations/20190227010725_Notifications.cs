using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace KSProject.Migrations
{
    public partial class Notifications : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Notifications",
                columns: table => new
                {
                    Id = table.Column<Guid>(nullable: false),
                    Link = table.Column<string>(nullable: true),
                    IsSeen = table.Column<bool>(nullable: false),
                    NotificationType = table.Column<int>(nullable: false),
                    NotifiedBy = table.Column<Guid>(nullable: false),
                    OwnerId = table.Column<Guid>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Notifications", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Notifications_Contributors_NotifiedBy",
                        column: x => x.NotifiedBy,
                        principalTable: "Contributors",
                        principalColumn: "ID",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "Notifiers",
                columns: table => new
                {
                    Id = table.Column<Guid>(nullable: false),
                    NotifierType = table.Column<int>(nullable: false),
                    CreatedOn = table.Column<DateTime>(nullable: false),
                    ModifiedOn = table.Column<DateTime>(nullable: false),
                    NotifiedBy = table.Column<Guid>(nullable: false),
                    OwnerId = table.Column<Guid>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Notifiers", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Notifiers_Contributors_NotifiedBy",
                        column: x => x.NotifiedBy,
                        principalTable: "Contributors",
                        principalColumn: "ID",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateIndex(
                name: "IX_Notifications_NotifiedBy",
                table: "Notifications",
                column: "NotifiedBy");

            migrationBuilder.CreateIndex(
                name: "IX_Notifiers_NotifiedBy",
                table: "Notifiers",
                column: "NotifiedBy");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Notifications");

            migrationBuilder.DropTable(
                name: "Notifiers");
        }
    }
}
