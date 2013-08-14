namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXS_07_02_XJYD_metadata))]
    public partial class EDU_ZXXS_07_02_XJYD
    {
        public EDU_ZXXS_07_02_XJYD()
        {
            YDLBM = "";
            YDRQ = "";
            YDYYM = "";
            YBH = "";
            YNJ = "";
            XBH = "";
            XNJ = "";
        }
        public class EDU_ZXXS_07_02_XJYD_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "学籍异动表编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学生")]
            public Int32 XSXXID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "异动类别码")]
            [StringLength(2)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YDLBM { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "异动日期")]
            [StringLength(8)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YDRQ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "异动原因码")]
            [StringLength(2)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YDYYM { get; set; }


            [Display(Name = "审批日期")]
            [StringLength(8)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SPRQ { get; set; }


            [Display(Name = "审批文号")]
            [StringLength(24)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SPWH { get; set; }


            [Display(Name = "经办人")]
            public Int32 JBRID { get; set; }


            [Display(Name = "经办人工号")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JBRGH { get; set; }


            [Display(Name = "异动来源学校码")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YDLYXXM { get; set; }


            [Display(Name = "异动去向学校码")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YDQXXXM { get; set; }


            [Display(Name = "异动说明")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YDSM { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "原专业")]
            public Int32 YZYID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "原班号")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YBH { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "原年级")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YNJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "现专业")]
            public Int32 XZYID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "现班号")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XBH { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "现年级")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XNJ { get; set; }


        }
    }
}
