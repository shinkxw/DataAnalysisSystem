namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ELE_01_USER_metadata))]
    public partial class EDU_ELE_01_USER
    {
        public EDU_ELE_01_USER()
        {
            LOGINNAME = "";
            PWD = "";
            ROLEIDLst = "";
            XM = "";
            XB = "";
            QQ = "";
            DZYJ = "";
            LXDH = "";
            ZJDLSJ = DateTime.Now;
            YHCJSJ = DateTime.Now;
        }
        public class EDU_ELE_01_USER_metadata
        {
            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "用户名")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LOGINNAME { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "应用")]
            public Int32 APPID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "密码")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PWD { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "用户状态")]
            public Int32 STATUS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "用户类别")]
            public Int32 USERTYPE { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "用户")]
            public Int32 USERID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "用户角色")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ROLEIDLst { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "姓名")]
            [StringLength(36)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XM { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "性别")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XB { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "QQ")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String QQ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "电子邮件")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DZYJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "联系电话")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LXDH { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "最近一次登录时间")]
            public DateTime ZJDLSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "登录成功次数")]
            public Int32 DLCGCS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "用户创建时间")]
            public DateTime YHCJSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "用户荣誉")]
            public Int32 YHRY { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "用户积分")]
            public Int32 YHJF { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "部门")]
            public Int32 BMID { get; set; }


        }
    }
}
