nAnnagement
=============

An application for tracking achievements, projects, and skills.

Hackathon 1
------------

Included for your programming delight you will find:

* **nAnnagement.Model** - The pre-defined data-model for the application.
* **nAnnagement.Sql** - A SQL project to do SQL things including Schema compares (Philip wanted one of these :-))
* **nAnnagement.Ui** - A C# MVC project which has all the pre-configured styles inherited from the [nSkillz](http://nskillz.azurewebsites.net/) application. [DataTables](https://datatables.net/), and [Font Awesome](http://fontawesome.io/icons/) nuGet packages have also been included in the project so that you can get cracking with exciting stuff straight away.
* **nAnnagement.Ui.Tests** - Unit Testing project for the nAnnagement.Ui project.

Code conventions
----------------

* Standard MS naming and coding conventions (https://msdn.microsoft.com/en-us/library/ff926074.aspx)
* When possible use `var` with variables
	
	DONT
    
        Dictionary<int, string> myDictionary = new Dictionary<int, string>();
        
    DO
    
        var myDictionary = new Dictionary<int, string>();
        
- Use `this` for all instance memebers

    DONT
    
        public void MyConstructor()
        {
            myLocalInstance = 1;
        }
        
    DO 
    
        public void MyConstructor()
        {
            this.myLocalInstance = 1;
        }
    
- One condition per line

    DONT
    
        if (a == 1 && b == 2 && c == 3)
        {
            ...
        }
    
    DO
        
        if (a == 1 && 
            b == 2 && 
            c == 3)
        {
            ...
        }
    
- One LINQ expression per line

    DONT
    
        response.GetType().GetProperties().Where(p => p.GetCustomAttributes(typeof(ResultPropertyAttribute), true).Any()).Select(p => new { Val = (string)p.GetValue(response), Att = p.GetCustomAttributes(typeof(ResultPropertyAttribute), true).First() as ResultPropertyAttribute }).ToList().ForEach(p => this.AddResult(p.Val, p.Att.ResultType));

    DO
    
        response
            .GetType()
            .GetProperties()
            .Where(p => p.GetCustomAttributes(typeof(ResultPropertyAttribute), true).Any())
            .Select(p => new { Val = (string)p.GetValue(response), Att = p.GetCustomAttributes(typeof(ResultPropertyAttribute), true).First() as ResultPropertyAttribute })
            .ToList()
            .ForEach(p => this.AddResult(p.Val, p.Att.ResultType));
            
- Using statements within the namespace

    DONT 
    
        using System.Linq;
        using System.Net.Http;
        using CyberForesight.Models.SearchQueries.Data.EF;
        
        namespace CyberForesight.Models.SearchQueries.Adapters
        {
            
            
    DO
        
        namespace CyberForesight.Models.SearchQueries.Adapters
        {
            using System.Linq;
            using System.Net.Http;
            using Data.EF;

    
- Always wrap code blocks (one liners included) in curly braces

    DONT
    
        if (myParameter == 'p')
            Console.WriteLine("Parameter P");
            
    DO
    
        if (myParameter == 'p')
        {
            Console.WriteLine("Parameter P");
        }
            

- Use full words for names (except for LINQ)

    DONT
    
        var userDict = new Dictionary<int, string>();
    
    DO
    
        var userDictionary = new Dictionary<int, string>();