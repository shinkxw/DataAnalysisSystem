namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_55_A01_FZXX_metadata))]
    public partial class EDU_ZZJX_55_A01_FZXX
    {
        public EDU_ZZJX_55_A01_FZXX()
        {
            FZMC = "";
            XFPDBIDLB = "";
            JDPDBIDLB = "";
        }
        public class EDU_ZZJX_55_A01_FZXX_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "分制名称")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FZMC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "最大值")]
            [Range(typeof(decimal), "0", "999")]
            public decimal ZDZ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "最小值")]
            [Range(typeof(decimal), "0", "999")]
            public decimal ZXZ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "及格线")]
            [Range(typeof(decimal), "0", "999")]
            public decimal JGX { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "免修对应分")]
            [Range(typeof(decimal), "0", "999")]
            public decimal MXF { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "免考对应分")]
            [Range(typeof(decimal), "0", "999")]
            public decimal MKF { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "学分评定表ID列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XFPDBIDLB { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "绩点评定表ID列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JDPDBIDLB { get; set; }


        }
    }
}
