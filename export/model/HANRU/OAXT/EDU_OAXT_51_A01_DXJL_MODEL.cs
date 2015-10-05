namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_51_A01_DXJL_metadata))]
    public partial class EDU_OAXT_51_A01_DXJL
    {
        public EDU_OAXT_51_A01_DXJL()
        {
            Sender = "";
            Recipien = "";
            RecipienNumber = "";
            Date = DateTime.Now;
            Content = "";
        }
        public class EDU_OAXT_51_A01_DXJL_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "发送人")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Sender { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "收件人")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Recipien { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "收件人号码")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String RecipienNumber { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "发送时间")]
            public DateTime Date { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "信息内容")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Content { get; set; }


        }
    }
}
