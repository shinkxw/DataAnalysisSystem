namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJZ_07_02_RKSJ_metadata))]
    public partial class EDU_ZXJZ_07_02_RKSJ
    {
        public EDU_ZXJZ_07_02_RKSJ()
        {
            RKKCH = "";
            RKQSNY = "";
            RKZZNY = "";
            RKXDM = "";
            RKJSM = "";
            SKBJ = "";
            SFLT = "";
            NJID = "";
        }
        public class EDU_ZXJZ_07_02_RKSJ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校名")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "教职工基本数据子类表")]
            public Int32 JZGJBSJID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "任课课程号")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String RKKCH { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "任课起始年月")]
            [StringLength(6)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String RKQSNY { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "任课终止年月")]
            [StringLength(6)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String RKZZNY { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "任课总学时")]
            [Range(typeof(decimal), "0", "999")]
            public decimal RKZXS { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "任课学段码")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String RKXDM { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "任课角色码")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String RKJSM { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "授课班级")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SKBJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "授课人数")]
            [Range(typeof(decimal), "0", "9999")]
            public decimal SKRS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "周课时")]
            public Int32 ZKS { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "是否连堂")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SFLT { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "年级号")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NJID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学期")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学年")]
            public Int32 XNID { get; set; }


        }
    }
}
