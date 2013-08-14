namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_02_01_ZZNJ_metadata))]
    public partial class EDU_ZZJX_02_01_ZZNJ
    {
        public EDU_ZZJX_02_01_ZZNJ()
        {
            NJDM = "";
            NJMC = "";
            SSNF = "";
            NJZT = "";
        }
        public class EDU_ZZJX_02_01_ZZNJ_metadata
        {
            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "年级代码")]
            [StringLength(4)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NJDM { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校名")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "年级名称")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NJMC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "所属年份")]
            [StringLength(4)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SSNF { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "年级状态")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NJZT { get; set; }


        }
    }
}
