namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZXS_17_A02_TFSJJL_metadata))]
    public partial class EDU_ZZXS_17_A02_TFSJJL
    {
        public EDU_ZZXS_17_A02_TFSJJL()
        {
            TJSJ = new DateTime(1900, 1, 1);
        }
        public class EDU_ZZXS_17_A02_TFSJJL_metadata
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
            [Display(Name = "收缴金额")]
            [Range(typeof(decimal), "0", "99999999")]
            public decimal SJJE { get; set; }


            [Display(Name = "添加时间")]
            public DateTime TJSJ { get; set; }


        }
    }
}
