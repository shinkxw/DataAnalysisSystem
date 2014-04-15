namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_01_A02_JZGNLZS_metadata))]
    public partial class EDU_ZZJG_01_A02_JZGNLZS
    {
        public EDU_ZZJG_01_A02_JZGNLZS()
        {
        }
        public class EDU_ZZJG_01_A02_JZGNLZS_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "教工基本信息")]
            public Int32 JZGJBSJID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Display(Name = "毕业证书")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BYZS { get; set; }


            [Display(Name = "学位证书")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XWZS { get; set; }


            [Display(Name = "职称证书")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZCZS { get; set; }


            [Display(Name = "普通话证书")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PTHZS { get; set; }


            [Display(Name = "教师资格证")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JSZGZ { get; set; }


            [Display(Name = "计算机合格证")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JSJHGZ { get; set; }


            [Display(Name = "技能证书")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JNZS { get; set; }


            [Display(Name = "最高学历")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZGXL { get; set; }


        }
    }
}
