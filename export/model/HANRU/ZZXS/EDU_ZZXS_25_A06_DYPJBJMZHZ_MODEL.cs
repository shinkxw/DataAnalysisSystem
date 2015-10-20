namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZXS_25_A06_DYPJBJMZHZ_metadata))]
    public partial class EDU_ZZXS_25_A06_DYPJBJMZHZ
    {
        public EDU_ZZXS_25_A06_DYPJBJMZHZ()
        {
            BJID = "";
            TJSJ = DateTime.Now;
        }
        public class EDU_ZZXS_25_A06_DYPJBJMZHZ_metadata
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
            [Display(Name = "周次")]
            public Int32 ZCID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "班级")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BJID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "周总分")]
            [Range(typeof(decimal), "0", "999999")]
            public decimal ZZF { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "总分")]
            [Range(typeof(decimal), "0", "999999")]
            public decimal ZF { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "等第")]
            public Int32 DDID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "等第评定教师")]
            public Int32 DDPJJSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "添加教师")]
            public Int32 TJJSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "添加时间")]
            public DateTime TJSJ { get; set; }


        }
    }
}
