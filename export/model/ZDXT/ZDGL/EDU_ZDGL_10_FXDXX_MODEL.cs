namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZDGL_10_FXDXX_metadata))]
    public partial class EDU_ZDGL_10_FXDXX
    {
        public EDU_ZDGL_10_FXDXX()
        {
            FXDH = "";
            CJYHID = "";
            CJSJ = DateTime.Now;
            FXSJ = DateTime.Now;
            SHSJ = DateTime.Now;
            ZT = "";
        }
        public class EDU_ZDGL_10_FXDXX_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "返修单号")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FXDH { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "创建用户")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CJYHID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "创建时间")]
            public DateTime CJSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "返修时间")]
            public DateTime FXSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "审核时间")]
            public DateTime SHSJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "状态")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZT { get; set; }


        }
    }
}
