namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXDY_04_A03_ZZGWFP_metadata))]
    public partial class EDU_ZXDY_04_A03_ZZGWFP
    {
        public EDU_ZXDY_04_A03_ZZGWFP()
        {
            JSID = "";
        }
        public class EDU_ZXDY_04_A03_ZZGWFP_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "值周岗位分配表")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学期")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "周次")]
            public Int32 ZCID { get; set; }


            [Display(Name = "工作日")]
            public Int32 GZR { get; set; }


            [Display(Name = "岗位")]
            public Int32 GWID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "教师")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JSID { get; set; }


        }
    }
}
