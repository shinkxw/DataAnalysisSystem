namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZXS_10_A13_XSHZXJ_metadata))]
    public partial class EDU_ZZXS_10_A13_XSHZXJ
    {
        public EDU_ZZXS_10_A13_XSHZXJ()
        {
            YHKH = "";
            SFSJ = DateTime.Now;
            TFSJ = DateTime.Now;
            TFYY = "";
            BZ = "";
            SQYY = "";
            SQSJ = DateTime.Now;
            SHSJ = DateTime.Now;
        }
        public class EDU_ZZXS_10_A13_XSHZXJ_metadata
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


            [Required(ErrorMessage = "必填")]
            [Display(Name = "助学金")]
            public Int32 ZXJID { get; set; }


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
            [Display(Name = "获得金额")]
            [Range(typeof(decimal), "0", "999999")]
            public decimal HDJE { get; set; }


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
            [Display(Name = "备注")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "申请原因")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SQYY { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "申请时间")]
            public DateTime SQSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "审核状态")]
            public Int32 SHZT { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "审核时间")]
            public DateTime SHSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "审核教师")]
            public Int32 SHJSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "添加教师")]
            public Int32 TJJSID { get; set; }


        }
    }
}
