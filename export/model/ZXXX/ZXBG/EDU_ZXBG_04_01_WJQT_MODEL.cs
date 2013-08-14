namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXBG_04_01_WJQT_metadata))]
    public partial class EDU_ZXBG_04_01_WJQT
    {
        public EDU_ZXBG_04_01_WJQT()
        {
            QTRQ = "";
            QTFW = "";
            JBRGH = "";
        }
        public class EDU_ZXBG_04_01_WJQT_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校名")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "文件")]
            public Int32 WJID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "经办人")]
            public Int32 JBRID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "清退日期")]
            [StringLength(8)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String QTRQ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "清退范围")]
            [StringLength(180)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String QTFW { get; set; }


            [Display(Name = "清退说明")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String QTSM { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "经办人工号")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JBRGH { get; set; }


        }
    }
}
