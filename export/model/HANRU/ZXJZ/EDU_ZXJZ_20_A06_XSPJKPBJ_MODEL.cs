namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJZ_20_A06_XSPJKPBJ_metadata))]
    public partial class EDU_ZXJZ_20_A06_XSPJKPBJ
    {
        public EDU_ZXJZ_20_A06_XSPJKPBJ()
        {
            BJMC = "";
            BPJGIDLB = "";
            BPJGXMLB = "";
            DYKCMCLB = "";
            SBM = "";
            KQSJ = DateTime.Now;
        }
        public class EDU_ZXJZ_20_A06_XSPJKPBJ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "考评")]
            public Int32 KPID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "班级名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BJMC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "被评教工ID列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BPJGIDLB { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "被评教工姓名列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BPJGXMLB { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "对应课程名称列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DYKCMCLB { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "应评人数")]
            public Int32 YPRS { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "识别码")]
            [StringLength(9)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SBM { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "开启时间")]
            public DateTime KQSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "自动关闭时间")]
            public Int32 ZDGBSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "状态")]
            public Int32 ZT { get; set; }


        }
    }
}
