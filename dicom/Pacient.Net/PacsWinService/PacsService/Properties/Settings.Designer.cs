//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.261
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace PacsService.Properties {
    
    
    [global::System.Runtime.CompilerServices.CompilerGeneratedAttribute()]
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("Microsoft.VisualStudio.Editors.SettingsDesigner.SettingsSingleFileGenerator", "10.0.0.0")]
    internal sealed partial class Settings : global::System.Configuration.ApplicationSettingsBase {
        
        private static Settings defaultInstance = ((Settings)(global::System.Configuration.ApplicationSettingsBase.Synchronized(new Settings())));
        
        public static Settings Default {
            get {
                return defaultInstance;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("http://medtera.yarcloud.ru/module-rer/Rer?wsdl")]
        public string SoapUrl {
            get {
                return ((string)(this["SoapUrl"]));
            }
            set {
                this["SoapUrl"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("Provider=PostgreSQL;Unicode=true;host=192.168.1.11;Database=webtalonXtula;user=as" +
            "u;password=asu")]
        public string ConnectionStringDatabase {
            get {
                return ((string)(this["ConnectionStringDatabase"]));
            }
            set {
                this["ConnectionStringDatabase"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("420")]
        public int TimerIntervalUpdatePeople {
            get {
                return ((int)(this["TimerIntervalUpdatePeople"]));
            }
            set {
                this["TimerIntervalUpdatePeople"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("20")]
        public int TimerIntervalUpdateSchedule {
            get {
                return ((int)(this["TimerIntervalUpdateSchedule"]));
            }
            set {
                this["TimerIntervalUpdateSchedule"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("16")]
        public int ThreadCount {
            get {
                return ((int)(this["ThreadCount"]));
            }
            set {
                this["ThreadCount"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("10")]
        public int TimerIntervalRestoreConnect {
            get {
                return ((int)(this["TimerIntervalRestoreConnect"]));
            }
            set {
                this["TimerIntervalRestoreConnect"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("86400")]
        public int TimerIntervalUpdateLpuSettings {
            get {
                return ((int)(this["TimerIntervalUpdateLpuSettings"]));
            }
            set {
                this["TimerIntervalUpdateLpuSettings"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("86400")]
        public int TimerIntervalUpdateAreas {
            get {
                return ((int)(this["TimerIntervalUpdateAreas"]));
            }
            set {
                this["TimerIntervalUpdateAreas"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("3600")]
        public int TimerIntervalUpdateArrival {
            get {
                return ((int)(this["TimerIntervalUpdateArrival"]));
            }
            set {
                this["TimerIntervalUpdateArrival"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("2400")]
        public int TimerIntervalUpdateReferral {
            get {
                return ((int)(this["TimerIntervalUpdateReferral"]));
            }
            set {
                this["TimerIntervalUpdateReferral"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("1200")]
        public int TimerIntervalUpdateCall {
            get {
                return ((int)(this["TimerIntervalUpdateCall"]));
            }
            set {
                this["TimerIntervalUpdateCall"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("7200")]
        public int TimerIntervalCleanBuffers {
            get {
                return ((int)(this["TimerIntervalCleanBuffers"]));
            }
            set {
                this["TimerIntervalCleanBuffers"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("86400")]
        public int TimerIntervalUpdateLpuNames {
            get {
                return ((int)(this["TimerIntervalUpdateLpuNames"]));
            }
            set {
                this["TimerIntervalUpdateLpuNames"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("20")]
        public int TimerIntervalUpdatePrescs {
            get {
                return ((int)(this["TimerIntervalUpdatePrescs"]));
            }
            set {
                this["TimerIntervalUpdatePrescs"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("8004")]
        public int HL7ServerPort {
            get {
                return ((int)(this["HL7ServerPort"]));
            }
            set {
                this["HL7ServerPort"] = value;
            }
        }
    }
}
