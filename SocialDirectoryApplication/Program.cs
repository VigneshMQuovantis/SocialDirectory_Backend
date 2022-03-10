using BusinessLayer.Interfaces;
using BusinessLayer.Services;
using Microsoft.EntityFrameworkCore;
using RepositoryLayer.Context;
using RepositoryLayer.Entities;
using RepositoryLayer.ExceptionHandling;
using RepositoryLayer.Intefaces;
using RepositoryLayer.Services;

var builder = WebApplication.CreateBuilder(args);


// Add services to the container.

builder.Services.AddControllers();
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddDbContext<SocialDirectoryContext>(opts => opts.UseSqlServer(builder.Configuration.GetConnectionString("SocialDirectoryDB")));
builder.Services.AddTransient<IUserBL, UserBL>();
builder.Services.AddTransient<IUserRL, UserRL>();
builder.Services.AddTransient<IContactDetailsBL, ContactDetailsBL>();
builder.Services.AddTransient<IContactDetailsRL, ContactDetailsRL>();
builder.Services.AddSwaggerGen();

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();

app.Run();

app.UseMiddleware<ErrorHandlerMiddleware>();
