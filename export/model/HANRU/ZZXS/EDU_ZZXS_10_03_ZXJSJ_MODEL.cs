namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZXS_10_03_ZXJSJ_metadata))]
    public partial class EDU_ZZXS_10_03_ZXJSJ
    {
        public EDU_ZZXS_10_03_ZXJSJ()
        {
            YHKH = "";
            SFSJ = new DateTime(1900, 1, 1);
            TFSJ = new DateTime(1900, 1, 1);
            TFYY = "";
            ZXJMC = "";
            ZXJLX = "";
            SFSH = "";
        }
        public class EDU_ZZXS_10_03_ZXJSJ_metadata
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
            public Int32 XSXXID { get; set; }


            [Display(Name = "中考报名号")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZKBMH { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "银行卡号")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YHKH { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "助学金额")]
            [Range(typeof(decimal), "0", "99999999")]
            public decimal ZXJE { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "始发时间")]
            public DateTime SFSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "停发时间")]
            public DateTime TFSJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "停发原因")]
            [StringLength(80)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TFYY { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "助学金名称")]
            [StringLength(60)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZXJMC { get; set; }


            [Display(Name = "资助单位或个人")]
            [StringLength(60)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZZDWHGR { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "助学金类型")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZXJLX { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "是否审核")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SFSH { get; set; }


        }
    }
}
