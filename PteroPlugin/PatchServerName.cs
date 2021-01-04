using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using HarmonyLib;
using VirtualBrightPlayz.SCP_ET.Misc;

namespace ExamplePlugin
{
    public class PatchServerName
    {
        [HarmonyPatch(typeof(GameSettings), nameof(GameSettings.LoadServerSettings))]
        public static void Postfix()
        {
            GameSettings.serverSettings.serverName = GameSettings.serverSettings.serverName.Replace("\\u003c", "<").Replace("\\u003e", ">");
        }
    }
}
