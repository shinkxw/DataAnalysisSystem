namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZXS_01_A01_XSXX_metadata))]
    public partial class EDU_ZZXS_01_A01_XSXX
    {
        public EDU_ZZXS_01_A01_XSXX()
        {
            BYLX = "";
            XSLX = "";
            SFZS = "";
        }
        public class EDU_ZZXS_01_A01_XSXX_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "学生信息数据表")]
            public Int32 XSXXID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校名")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "专业基本信息")]
            public Int32 ZYXXID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学年")]
            public Int32 XNID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学期表")]
            public Int32 ZZXQID { get; set; }


            [Display(Name = "家庭地址区划码")]
            [StringLength(6)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JTDZQH { get; set; }


            [Display(Name = "家庭详细地址")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JTXXDZ { get; set; }


            [Display(Name = "户籍详细地址")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HJXXDZ { get; set; }


            [Display(Name = "户籍性质代码")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HJXZ { get; set; }


            [Display(Name = "不宜军训")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BYJX { get; set; }


            [Display(Name = "初三班主任")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CSBZR { get; set; }


            [Display(Name = "曾担任何种职务")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DRZW { get; set; }


            [Display(Name = "愿意担任班干部，何职")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YYDR { get; set; }


            [Display(Name = "备注")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "毕业生类型")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BYLX { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "学生类型")]
            [StringLength(5)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XSLX { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "是否住宿")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SFZS { get; set; }


            [Display(Name = "学生报名时间")]
            [StringLength(8)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XSBMSJ { get; set; }


        }
    }
}
