namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_35_A03_HFJL_metadata))]
    public partial class EDU_OAXT_35_A03_HFJL
    {
        public EDU_OAXT_35_A03_HFJL()
        {
            HFRID = "";
            HFNR = "";
            HSSJ = DateTime.Now;
        }
        public class EDU_OAXT_35_A03_HFJL_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "任务")]
            public Int32 RWID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "回复人")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HFRID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "回复内容")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HFNR { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "回复时间")]
            public DateTime HSSJ { get; set; }


        }
    }
}
