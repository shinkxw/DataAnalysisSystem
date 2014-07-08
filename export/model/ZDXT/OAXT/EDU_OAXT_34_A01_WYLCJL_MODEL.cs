namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_34_A01_WYLCJL_metadata))]
    public partial class EDU_OAXT_34_A01_WYLCJL
    {
        public EDU_OAXT_34_A01_WYLCJL()
        {
            WYBT = "";
            NR = "";
            BZ = "";
            SQRID = "";
            SQSJ = DateTime.Now;
            SHRID = "";
            SHSJ = DateTime.Now;
            SHBZ = "";
            DYSJ = DateTime.Now;
            DYBZ = "";
        }
        public class EDU_OAXT_34_A01_WYLCJL_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "文印标题")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String WYBT { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "内容")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NR { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "备注")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "申请人")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SQRID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "申请时间")]
            public DateTime SQSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "审核状态")]
            public Int32 SHZT { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "审核人")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SHRID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "审核时间")]
            public DateTime SHSJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "审核备注")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SHBZ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "审核列表是否显示")]
            public Int32 SHLBSFXS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "打印状态")]
            public Int32 DYZT { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "打印时间")]
            public DateTime DYSJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "打印备注")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DYBZ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "打印列表是否显示")]
            public Int32 DYLBSFXS { get; set; }


        }
    }
}
