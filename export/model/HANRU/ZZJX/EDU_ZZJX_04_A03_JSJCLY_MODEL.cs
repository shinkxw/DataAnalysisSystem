namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_04_A03_JSJCLY_metadata))]
    public partial class EDU_ZZJX_04_A03_JSJCLY
    {
        public EDU_ZZJX_04_A03_JSJCLY()
        {
            NJID = "";
            KCID = "";
            LYSJ = DateTime.Now;
            JSR = "";
        }
        public class EDU_ZZJX_04_A03_JSJCLY_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学期")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "专业")]
            public Int32 ZYXXID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "年级")]
            [StringLength(4)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NJID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "课程")]
            [StringLength(6)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCID { get; set; }


            [Display(Name = "教材")]
            public Int32 JCID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "领用数量")]
            public Int32 LYSL { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "领用教师")]
            public Int32 LYJSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "领用时间")]
            public DateTime LYSJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "经手人")]
            [StringLength(36)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JSR { get; set; }


        }
    }
}
