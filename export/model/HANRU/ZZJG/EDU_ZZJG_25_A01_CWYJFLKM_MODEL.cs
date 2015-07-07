namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_25_A01_CWYJFLKM_metadata))]
    public partial class EDU_ZZJG_25_A01_CWYJFLKM
    {
        public EDU_ZZJG_25_A01_CWYJFLKM()
        {
            YJKMDM = "";
            YJKMMC = "";
        }
        public class EDU_ZZJG_25_A01_CWYJFLKM_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "一级科目代码")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YJKMDM { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "一级科目名称")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YJKMMC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "是否分摊")]
            public Int32 SFFT { get; set; }


        }
    }
}
