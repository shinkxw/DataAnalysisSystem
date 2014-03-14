namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXFC_08_A03_ZWHCY_metadata))]
    public partial class EDU_ZXFC_08_A03_ZWHCY
    {
        public EDU_ZXFC_08_A03_ZWHCY()
        {
            TJSJ = DateTime.Now;
            ZWMC = "";
            GZNR = "";
        }
        public class EDU_ZXFC_08_A03_ZWHCY_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "成员")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "用户")]
            public Int32 YHID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "用户类型")]
            public Int32 YHLX { get; set; }


            [Display(Name = "成员姓名")]
            [StringLength(128)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CYXM { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "添加时间")]
            public DateTime TJSJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "职位名称")]
            [StringLength(128)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZWMC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "工作内容")]
            [StringLength(500)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GZNR { get; set; }


        }
    }
}
