using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaskManager
{
    public class Task
    {
        public Task()
        {
            ID = ++count;
        }
        public int ID { get; set; }
        public string Title { get; set; }
        private static int count = 0;

    }


    public partial class Tasks : System.Web.UI.Page
    {
        public List<Task> tasks = new List<Task>();
        protected void Page_Load(object sender, EventArgs e)
        {
            tasksRepeater.DataSource = tasks;
            DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(newTask.Text))
            {
                Task task = new Task() { Title = newTask.Text };
                tasks.Add(task);
            }
            tasksRepeater.DataSource = tasks;
            DataBind();

        }
    }
}