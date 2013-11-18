namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_17_A01_DYXX_metadata))]
    public partial class EDU_ZZJG_17_A01_DYXX
    {
        public EDU_ZZJG_17_A01_DYXX()
        {
            RDSJ = new DateTime(1900, 1, 1);
            RDDD = "";
            RDJSR = "";
            TJSJ = new DateTime(1900, 1, 1);
            BZ = "";
        }
        public class EDU_ZZJG_17_A01_DYXX_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "教工基本信息")]
            public Int32 JZGJBSJID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "入党时间")]
            public DateTime RDSJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "入党地点")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String RDDD { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "入党介绍人")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String RDJSR { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "当前状态")]
            public Int32 DQZT { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "添加教师")]
            public Int32 TJJSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "添加时间")]
            public DateTime TJSJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "备注")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


        }
    }
}
