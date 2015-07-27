namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZXS_22_A04_ZSGLXSXX_metadata))]
    public partial class EDU_ZZXS_22_A04_ZSGLXSXX
    {
        public EDU_ZZXS_22_A04_ZSGLXSXX()
        {
            XM = "";
            XB = "";
            SFZX = "";
            LXDH = "";
            TC = "";
            BZ = "";
            LRSJ = DateTime.Now;
            LRR = "";
            LQSJ = DateTime.Now;
            LQR = "";
            BH = "";
        }
        public class EDU_ZZXS_22_A04_ZSGLXSXX_metadata
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


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "姓名")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XM { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "性别")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XB { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "是否住校")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SFZX { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "联系电话")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LXDH { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "毕业学校")]
            public Int32 BYXXID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "语文")]
            [Range(typeof(decimal), "0", "9999")]
            public decimal YW { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "数学")]
            [Range(typeof(decimal), "0", "9999")]
            public decimal SX { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "英语")]
            [Range(typeof(decimal), "0", "9999")]
            public decimal YY { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "社政")]
            [Range(typeof(decimal), "0", "9999")]
            public decimal SZ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "科学")]
            [Range(typeof(decimal), "0", "9999")]
            public decimal KX { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "体育")]
            [Range(typeof(decimal), "0", "9999")]
            public decimal TY { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "实验加分")]
            [Range(typeof(decimal), "0", "9999")]
            public decimal SYJF { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "总分")]
            [Range(typeof(decimal), "0", "9999")]
            public decimal ZF { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "特长")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "备注")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "第一志愿")]
            public Int32 DYZYID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "第二志愿")]
            public Int32 DEZYID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "第三志愿")]
            public Int32 DSZYID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "临时")]
            public Int32 LSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "录入时间")]
            public DateTime LRSJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "录入人")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LRR { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "录取时间")]
            public DateTime LQSJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "录取人")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LQR { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "录取专业")]
            public Int32 LQZYID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "编号")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BH { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "缴费金额")]
            [Range(typeof(decimal), "0", "9999999")]
            public decimal JFJE { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学年")]
            public Int32 XNID { get; set; }


        }
    }
}
