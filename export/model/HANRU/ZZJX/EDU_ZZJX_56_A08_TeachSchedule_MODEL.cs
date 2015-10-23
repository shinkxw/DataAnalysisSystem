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
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������ñ�EDU_ZZJX_55_A04_ZYKCK��ID��")]
            public Int32 CourseID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������ñ�EDU_ZZJX_02_02_ZZBJ��XZBDM��")]
            public Int32 ClassID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������ñ�EDU_ZZJG_01_01_JZGJBSJ��ID��")]
            public Int32 TeacherID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Times { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�������")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TimesInMorning { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�ϰ���")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ClassGroupName { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�ϰ���")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ClassGroup { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String RateOfProgress { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "˫�ο�")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PairClass { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "˫�η�ʽ")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PairClassCategory { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��BaseProjectInfo���")]
            public Int32 BaseProjectInfoID { get; set; }


            [Display(Name = "")]
            public Int32 PlaceID { get; set; }


        }
    }
}
