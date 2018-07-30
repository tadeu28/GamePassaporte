using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using SlimDX.DirectInput;

namespace PassaporteLauncher
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();

            IniciarComponentes();
        }

        public void IniciarComponentes()
        {
            var result = new List<String> {"Keyboard"};

            var input = new DirectInput();
            foreach (var di in input.GetDevices(DeviceClass.GameController, DeviceEnumerationFlags.AttachedOnly))
            {
                result.Add(di.InstanceName);
                break;
            }

            comboBox1.DataSource = result;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Environment.Exit(0);
        }

        private void button2_Click(object sender, EventArgs e)
        {
            try
            {
                var gamePath = Environment.CurrentDirectory + "\\";
                var windowsPath = (Environment.Is64BitOperatingSystem ? "win64\\" : "win32\\");

                if (comboBox1.Text.ToLower() == "keyboard")
                {


                    gamePath += "keyboard\\" + windowsPath + "nw.exe";
                }
                else
                {
                    gamePath += "Joystick\\" + windowsPath + "nw.exe";
                }

                Process.Start(gamePath);
                Environment.Exit(0);
            }
            catch (Exception ex)
            {
                MessageBox.Show("Passaporte Intergalático",
                    "Não foi possível encontrar o diretório do jogo",
                    MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
    }
}
