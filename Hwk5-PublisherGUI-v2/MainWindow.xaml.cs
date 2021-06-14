//******************************************************
// File: MainWindow.xaml.cs
//
// Purpose: Contains all code for event handling related to the Main Window GUI.
//
// Written By: Samson Fashakin
//
// Compiler: Visual Studio 2019
//
//******************************************************
using Fashakin_HW1_ClassLibrary;
using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.IO;
using System.Linq;
using System.Runtime.Serialization.Json;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

/*accidentally named the file Hwk5_PublisherGUI_v2 even though this is our fourth homework.
 */
namespace Hwk5_PublisherGUI_v2
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private OpenFileDialog op;
        private Publisher p;
        private BookPublishingEntities e1 = new BookPublishingEntities();
        public MainWindow()
        {
            InitializeComponent();
            e1.Books.Load();
            DataContext = e1.Books.Local;
        }

        //****************************************************
        // Method: exitMI_Click
        //
        // Purpose: On Click Handler for the Exit menu item.
        //****************************************************
        private void exitMI_Click(object sender, RoutedEventArgs e)
        {
            
            App.Current.Shutdown();
        }

        //****************************************************
        // Method: aboutMI_Click
        //
        // Purpose: On Click Handler for the About menu item.
        //****************************************************
        private void aboutMI_Click(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("Book Publishing GUI \nVersion 2.0 \nWritten by Samson Fashakin", "About Book Publishing GUI");
        }

        //****************************************************
        // Method: openFileMI_Click
        //
        // Purpose: On Click Handler for the Publisher from JSON menu item.
        //****************************************************
        private void openFileMI_Click(object sender, RoutedEventArgs e)
        {

            //opens file using File Dialog and reads data from file into new Publisher object
            op = new OpenFileDialog();
            op.Title = "Select a File";
            //op.InitialDirectory = "c:\Hwk5-PublisherGUI-v2\Hwk5-PublisherGUI-v2\bin\Debug";
            op.ShowDialog();
            string filename = op.FileName;
            

            try
            {
                FileStream reader = new FileStream(filename, FileMode.Open, FileAccess.Read);
                DataContractJsonSerializer inputSerializer;
                inputSerializer = new DataContractJsonSerializer(typeof(Publisher));
                p = (Publisher)inputSerializer.ReadObject(reader);
                reader.Dispose();
            }
            catch { }


            //Jon referred me to this tutorial when I was trying to figure out how to go about clearing the db table
            // https://www.mysqltutorial.org/mysql-reset-auto-increment/#:~:text=The%20syntax%20of%20the%20ALTER,in%20the%20expression%20AUTO_INCREMENT%3Dvalue%20.
            e1.Books.RemoveRange(e1.Books);
            e1.SaveChanges();
            e1.Database.ExecuteSqlCommand("TRUNCATE TABLE BOOKS");

            foreach (Fashakin_HW1_ClassLibrary.Book b in p.Books)
            {
                
               e1.Books.Add(new Book { Title = b.Title, Price = b.Price });
            }
            e1.SaveChanges();

        }
    }
}
