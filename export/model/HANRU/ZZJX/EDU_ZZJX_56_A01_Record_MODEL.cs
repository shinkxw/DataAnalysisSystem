namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_56_A01_Record_metadata))]
    public partial class EDU_ZZJX_56_A01_Record
    {
        public EDU_ZZJX_56_A01_Record()
        {
            ShortTitle1 = "";
            ShortTitle2 = "";
            Comment = "";
        }
        public class EDU_ZZJX_56_A01_Record_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "序列号")]
            public Int32 SerialNumber { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "状态")]
            public Int32 Status { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "短标题一")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ShortTitle1 { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "短标题二")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ShortTitle2 { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "评论")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Comment { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "")]
            public Int32 Code { get; set; }


        }
    }
}
