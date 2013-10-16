namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZXS_14_A06_XSWWYTZQRYAP_metadata))]
    public partial class EDU_ZZXS_14_A06_XSWWYTZQRYAP
    {
        public EDU_ZZXS_14_A06_XSWWYTZQRYAP()
        {
            ZQKSSJ = new DateTime(1900, 1, 1);
            ZQJSSJ = new DateTime(1900, 1, 1);
        }
        public class EDU_ZZXS_14_A06_XSWWYTZQRYAP_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "值勤项目")]
            public Int32 ZQXMID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "值勤人员类型")]
            public Int32 ZQRYLX { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "值勤人员")]
            public Int32 ZQRYID { get; set; }


            [Display(Name = "值勤开始时间")]
            public DateTime ZQKSSJ { get; set; }


            [Display(Name = "值勤结束时间")]
            public DateTime ZQJSSJ { get; set; }


        }
    }
}
