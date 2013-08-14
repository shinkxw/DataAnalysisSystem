namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXBG_13_A01_DWSJ_metadata))]
    public partial class EDU_ZXBG_13_A01_DWSJ
    {
        public EDU_ZXBG_13_A01_DWSJ()
        {
        }
        public class EDU_ZXBG_13_A01_DWSJ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "单位")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Display(Name = "上级单位")]
            public Int32 SJDWID { get; set; }


            [Display(Name = "单位负责人")]
            public Int32 DWFZRID { get; set; }


            [Display(Name = "单位名称")]
            [StringLength(60)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DWMC { get; set; }


            [Display(Name = "单位成员ID列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DWCYIDLB { get; set; }


        }
    }
}
