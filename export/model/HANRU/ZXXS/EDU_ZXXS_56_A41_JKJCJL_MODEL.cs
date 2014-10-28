namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXS_56_A41_JKJCJL_metadata))]
    public partial class EDU_ZXXS_56_A41_JKJCJL
    {
        public EDU_ZXXS_56_A41_JKJCJL()
        {
            NJID = "";
            BJID = "";
            TJRQ = DateTime.Now;
            TLZ = "";
            TLY = "";
            FYJYYZK = "";
            SY = "";
            SJ = "";
            BB = "";
            KQ = "";
            XZF = "";
            GPCW = "";
            JZSZ = "";
            PZ = "";
            PF = "";
            CLB = "";
            XT = "";
            JWBS = "";
            XYQM = "";
            JZQM = "";
            DJYHID = "";
        }
        public class EDU_ZXXS_56_A41_JKJCJL_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学期")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学生")]
            public Int32 XSID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "年级")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NJID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "班级")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BJID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "体检日期")]
            public DateTime TJRQ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "左裸眼视力")]
            [Range(typeof(decimal), "0", "9")]
            public decimal ZLYSL { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "左矫正视力")]
            [Range(typeof(decimal), "0", "9")]
            public decimal ZJZSL { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "左矫正度数")]
            public Int32 ZJZDS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "右裸眼视力")]
            [Range(typeof(decimal), "0", "9")]
            public decimal YLYSL { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "右矫正视力")]
            [Range(typeof(decimal), "0", "9")]
            public decimal YJZSL { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "右矫正度数")]
            public Int32 YJZDS { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "听力左")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TLZ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "听力右")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TLY { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "发育及营养状况")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FYJYYZK { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "身高")]
            [Range(typeof(decimal), "0", "999")]
            public decimal SG { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "体重")]
            [Range(typeof(decimal), "0", "999")]
            public decimal TZ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "肺活量")]
            [Range(typeof(decimal), "0", "99999")]
            public decimal FHL { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "血压")]
            [Range(typeof(decimal), "0", "99999")]
            public decimal XY { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "脉搏")]
            public Int32 MB { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "沙眼")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SY { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "色觉")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "鼻病")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BB { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "口腔")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KQ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "心脏、肺")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XZF { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "肝脾、胃肠")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GPCW { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "脊柱、四肢")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JZSZ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "平足")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PZ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "皮肤")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PF { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "传染病")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CLB { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "胸透")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XT { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "既往病史")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JWBS { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "校医签名")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XYQM { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "家长签名")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JZQM { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "登记用户")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DJYHID { get; set; }


        }
    }
}
