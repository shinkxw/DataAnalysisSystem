namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ELE_05_XLZ_metadata))]
    public partial class EDU_ELE_05_XLZ
    {
        public EDU_ELE_05_XLZ()
        {
            NAME = "";
        }
        public class EDU_ELE_05_XLZ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "校历")]
            public Int32 XLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "校历周名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NAME { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "开始日期")]
            public DateTime STARTDAY { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "结束日期")]
            public DateTime ENDDAY { get; set; }


            [Display(Name = "周计划")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZJH { get; set; }


        }
    }
}
