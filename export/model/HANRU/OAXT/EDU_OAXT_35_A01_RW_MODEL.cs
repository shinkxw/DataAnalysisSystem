namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_35_A01_RW_metadata))]
    public partial class EDU_OAXT_35_A01_RW
    {
        public EDU_OAXT_35_A01_RW()
        {
            RWBT = "";
            JSYHIDLB = "";
            JSYHXMLB = "";
            JZRQ = DateTime.Now;
            NR = "";
            FBRID = "";
            FBRXM = "";
            FBBMMC = "";
            FBSJ = DateTime.Now;
        }
        public class EDU_OAXT_35_A01_RW_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "任务标题")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String RWBT { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "接收用户ID列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JSYHIDLB { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "接收用户姓名列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JSYHXMLB { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "截止日期")]
            public DateTime JZRQ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "内容")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NR { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "发布人")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FBRID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "发布人姓名")]
            [StringLength(36)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FBRXM { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "发布部门名称")]
            [StringLength(60)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FBBMMC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "发布时间")]
            public DateTime FBSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "任务状态")]
            public Int32 RWZT { get; set; }


        }
    }
}
