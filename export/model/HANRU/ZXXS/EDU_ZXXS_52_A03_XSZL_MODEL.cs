namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXS_52_A03_XSZL_metadata))]
    public partial class EDU_ZXXS_52_A03_XSZL
    {
        public EDU_ZXXS_52_A03_XSZL()
        {
            NR = "";
            SCSJ = DateTime.Now;
        }
        public class EDU_ZXXS_52_A03_XSZL_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "评选名称")]
            public Int32 PXMCID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "评选项目")]
            public Int32 PXXMID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学生")]
            public Int32 XSID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "内容")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NR { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "上传时间")]
            public DateTime SCSJ { get; set; }


        }
    }
}
