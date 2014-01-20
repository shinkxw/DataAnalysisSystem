namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJZ_17_A06_DZBHDXX_metadata))]
    public partial class EDU_ZXJZ_17_A06_DZBHDXX
    {
        public EDU_ZXJZ_17_A06_DZBHDXX()
        {
            HDMC = "";
            HDNR = "";
            SCSJ = DateTime.Now;
            HDSJ = DateTime.Now;
        }
        public class EDU_ZXJZ_17_A06_DZBHDXX_metadata
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
            [Display(Name = "党支部")]
            public Int32 DZBID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "活动名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HDMC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "活动内容")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HDNR { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "上传教师")]
            public Int32 SCJSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "上传时间")]
            public DateTime SCSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "活动时间")]
            public DateTime HDSJ { get; set; }


        }
    }
}
