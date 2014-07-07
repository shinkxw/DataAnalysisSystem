namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_22_A03_PHZYCPDFXM_metadata))]
    public partial class EDU_ZZJG_22_A03_PHZYCPDFXM
    {
        public EDU_ZZJG_22_A03_PHZYCPDFXM()
        {
            DFXMMC = "";
        }
        public class EDU_ZZJG_22_A03_PHZYCPDFXM_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "打分方式")]
            public Int32 DFFSID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "打分项目名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DFXMMC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "分值")]
            public Int32 FZ { get; set; }


        }
    }
}
