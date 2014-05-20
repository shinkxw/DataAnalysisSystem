namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_21_A02_SXSGL_metadata))]
    public partial class EDU_ZZJX_21_A02_SXSGL
    {
        public EDU_ZZJX_21_A02_SXSGL()
        {
            SXSXM = "";
        }
        public class EDU_ZZJX_21_A02_SXSGL_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "实习班")]
            public Int32 SZBID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学生")]
            public Int32 StuID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "实习生状态")]
            public Int32 ZT { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "是否上交实习协议书")]
            public Int32 SFSJSXXYS { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "实习生姓名")]
            [StringLength(36)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SXSXM { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学期")]
            public Int32 XQID { get; set; }


        }
    }
}
