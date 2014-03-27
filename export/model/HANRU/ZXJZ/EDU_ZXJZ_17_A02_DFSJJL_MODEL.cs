namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJZ_17_A02_DFSJJL_metadata))]
    public partial class EDU_ZXJZ_17_A02_DFSJJL
    {
        public EDU_ZXJZ_17_A02_DFSJJL()
        {
            TJSJ = DateTime.Now;
        }
        public class EDU_ZXJZ_17_A02_DFSJJL_metadata
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
            [Display(Name = "党员信息")]
            public Int32 DYXXID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "教工基本信息")]
            public Int32 JZGJBSJID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "收缴金额")]
            [Range(typeof(decimal), "0", "999999")]
            public decimal SJJE { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "添加教师")]
            public Int32 TJJSID { get; set; }


            [Display(Name = "添加时间")]
            public DateTime TJSJ { get; set; }


        }
    }
}
