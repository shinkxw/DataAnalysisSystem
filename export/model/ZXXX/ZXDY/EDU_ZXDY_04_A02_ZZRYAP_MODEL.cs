namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXDY_04_A02_ZZRYAP_metadata))]
    public partial class EDU_ZXDY_04_A02_ZZRYAP
    {
        public EDU_ZXDY_04_A02_ZZRYAP()
        {
            ZZBJ = "";
            ZZID = "";
            ZYIDLB = "";
        }
        public class EDU_ZXDY_04_A02_ZZRYAP_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "值周人员安排表")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学期")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "周次")]
            public Int32 ZCID { get; set; }


            [Display(Name = "开始日期")]
            public DateTime KSRQ { get; set; }


            [Display(Name = "结束日期")]
            public DateTime JSRQ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "值周班级班号")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZZBJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "组长")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZZID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "组员ID列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZYIDLB { get; set; }


        }
    }
}
