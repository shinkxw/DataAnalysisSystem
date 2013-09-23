namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_JPXT_01_01_JLCSJ_metadata))]
    public partial class EDU_JPXT_01_01_JLCSJ
    {
        public EDU_JPXT_01_01_JLCSJ()
        {
            PP = "";
            CPH = "";
            CJH = "";
        }
        public class EDU_JPXT_01_01_JLCSJ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "购买时间")]
            public DateTime GMSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "车辆型号")]
            public Int32 CLXHID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "品牌")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PP { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "车牌号")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CPH { get; set; }


            [Display(Name = "发动机号")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FDJH { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "车架号")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CJH { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "报废时间")]
            public DateTime BFSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "二保日期")]
            public DateTime EBRQ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "当前状态")]
            public Int32 DQZT { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "当前教练员")]
            public Int32 DQJLYID { get; set; }


            [Display(Name = "备注")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


        }
    }
}
