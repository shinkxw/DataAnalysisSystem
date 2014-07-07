namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_22_A02_PHZYCPDFFS_metadata))]
    public partial class EDU_ZZJG_22_A02_PHZYCPDFFS
    {
        public EDU_ZZJG_22_A02_PHZYCPDFFS()
        {
            DFFSMC = "";
        }
        public class EDU_ZZJG_22_A02_PHZYCPDFFS_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "打分方式名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DFFSMC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "状态")]
            public Int32 ZT { get; set; }


        }
    }
}
