namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXX_03_01_BJ_metadata))]
    public partial class EDU_ZXXX_03_01_BJ
    {
        public EDU_ZXXX_03_01_BJ()
        {
            BH = "";
            NJ = "";
            SFSSMZSYJXB = "";
            SYJXMSM = "";
        }
        public class EDU_ZXXX_03_01_BJ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校名")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "班号")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BH { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "年级号")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NJ { get; set; }


            [Display(Name = "班级名称")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BJ { get; set; }


            [Display(Name = "建班年月")]
            [StringLength(6)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JBNY { get; set; }


            [Display(Name = "班主任工号")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZRGH { get; set; }


            [Display(Name = "班长学号")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZXH { get; set; }


            [Display(Name = "班级荣誉称号")]
            [StringLength(40)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BJRYCH { get; set; }


            [Display(Name = "学制")]
            [Range(typeof(decimal), "0", "999")]
            public decimal XZ { get; set; }


            [Display(Name = "班级类型码")]
            [StringLength(2)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BJLXM { get; set; }


            [Display(Name = "文理类型")]
            [StringLength(2)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String WLLX { get; set; }


            [Display(Name = "毕业日期")]
            [StringLength(8)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BYRQ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "是否少数民族双语教学班")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SFSSMZSYJXB { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "双语教学模式码")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SYJXMSM { get; set; }


        }
    }
}
