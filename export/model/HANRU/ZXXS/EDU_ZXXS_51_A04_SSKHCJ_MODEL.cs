namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXS_51_A04_SSKHCJ_metadata))]
    public partial class EDU_ZXXS_51_A04_SSKHCJ
    {
        public EDU_ZXXS_51_A04_SSKHCJ()
        {
            KHSJ = DateTime.Now;
            DJRID = "";
            DJSJ = DateTime.Now;
        }
        public class EDU_ZXXS_51_A04_SSKHCJ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "所属大类")]
            public Int32 SSDLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "所属大类项目")]
            public Int32 SSDLXMID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "公寓")]
            public Int32 GYID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "宿舍")]
            public Int32 SSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "考核时间")]
            public DateTime KHSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "分值")]
            [Range(typeof(decimal), "0", "999")]
            public decimal FZ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "登记人")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DJRID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "登记时间")]
            public DateTime DJSJ { get; set; }


        }
    }
}
