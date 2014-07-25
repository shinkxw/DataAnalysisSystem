namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZDGL_08_SXDXX_metadata))]
    public partial class EDU_ZDGL_08_SXDXX
    {
        public EDU_ZDGL_08_SXDXX()
        {
            SXDH = "";
            CJYHID = "";
            CJSJ = DateTime.Now;
            SXSJ = DateTime.Now;
            QRSJ = DateTime.Now;
        }
        public class EDU_ZDGL_08_SXDXX_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "送修单号")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SXDH { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "创建用户")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CJYHID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "创建时间")]
            public DateTime CJSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "送修时间")]
            public DateTime SXSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "确认时间")]
            public DateTime QRSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "状态")]
            public Int32 ZT { get; set; }


        }
    }
}
