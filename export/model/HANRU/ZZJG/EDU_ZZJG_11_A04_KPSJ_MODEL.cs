namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_11_A04_KPSJ_metadata))]
    public partial class EDU_ZZJG_11_A04_KPSJ
    {
        public EDU_ZZJG_11_A04_KPSJ()
        {
            KPMC = "";
            BPRIDLB = "";
            KSSJ = DateTime.Now;
            JSSJ = DateTime.Now;
        }
        public class EDU_ZZJG_11_A04_KPSJ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学年")]
            public Int32 XNID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学期")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "考评名称")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KPMC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "被评人ID列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BPRIDLB { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "开始时间")]
            public DateTime KSSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "结束时间")]
            public DateTime JSSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "状态")]
            public Int32 ZT { get; set; }


        }
    }
}
