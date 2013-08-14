namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZZS_01_A01_ZSJH_metadata))]
    public partial class EDU_ZZZS_01_A01_ZSJH
    {
        public EDU_ZZZS_01_A01_ZSJH()
        {
        }
        public class EDU_ZZZS_01_A01_ZSJH_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校名")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "专业基本信息")]
            public Int32 ZYXXID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学年")]
            public Int32 XNID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "招生计划")]
            public Int32 ZSJHRS { get; set; }


            [Display(Name = "备注")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


        }
    }
}
