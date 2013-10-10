namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_11_A03_KPFS_metadata))]
    public partial class EDU_ZZJG_11_A03_KPFS
    {
        public EDU_ZZJG_11_A03_KPFS()
        {
            KPFSMC = "";
        }
        public class EDU_ZZJG_11_A03_KPFS_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "考评方式名称")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KPFSMC { get; set; }


        }
    }
}
