namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_56_A08_TeachSchedule_metadata))]
    public partial class EDU_ZZJX_56_A08_TeachSchedule
    {
        public EDU_ZZJX_56_A08_TeachSchedule()
        {
            Times = "";
            TimesInMorning = "";
            ClassGroupName = "";
            ClassGroup = "";
            RateOfProgress = "";
            PairClass = "";
            PairClassCategory = "";
        }
        public class EDU_ZZJX_56_A08_TeachSchedule_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "外键引用表EDU_ZZJX_55_A04_ZYKCK的ID列")]
            public Int32 CourseID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "外键引用表EDU_ZZJX_02_02_ZZBJ的XZBDM列")]
            public Int32 ClassID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "外键引用表EDU_ZZJG_01_01_JZGJBSJ的ID列")]
            public Int32 TeacherID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "次数")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Times { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "上午次数")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TimesInMorning { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "合班名")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ClassGroupName { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "合班组")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ClassGroup { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "进度组")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String RateOfProgress { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "双次课")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PairClass { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "双次方式")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PairClassCategory { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "表BaseProjectInfo外键")]
            public Int32 BaseProjectInfoID { get; set; }


            [Display(Name = "")]
            public Int32 PlaceID { get; set; }


        }
    }
}
