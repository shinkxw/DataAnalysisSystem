namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_50_A12_PJPFFS_metadata))]
    public partial class EDU_ZZJX_50_A12_PJPFFS
    {
        public EDU_ZZJX_50_A12_PJPFFS()
        {
            PFFSMC = "";
        }
        public class EDU_ZZJX_50_A12_PJPFFS_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "评分方式名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PFFSMC { get; set; }


        }
    }
}
