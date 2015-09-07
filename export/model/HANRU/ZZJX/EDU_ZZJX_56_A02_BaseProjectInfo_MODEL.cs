namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_56_A02_BaseProjectInfo_metadata))]
    public partial class EDU_ZZJX_56_A02_BaseProjectInfo
    {
        public EDU_ZZJX_56_A02_BaseProjectInfo()
        {
            ProjectID = "";
            ProjectName = "";
            GreatorID = "";
            GreatorName = "";
            GreatDate = "";
            TheLastReFlashDay = "";
            TheLastReFlashTeacherID = "";
            TheLastReFlashTeacherName = "";
            UsingSetting = "";
            StartDate = DateTime.Now;
            EndDate = DateTime.Now;
        }
        public class EDU_ZZJX_56_A02_BaseProjectInfo_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�α�")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ProjectID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�α�����")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ProjectName { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������ʦ")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GreatorID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������ʦ")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GreatorName { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��������")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GreatDate { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����������")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TheLastReFlashDay { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�����½�ʦ")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TheLastReFlashTeacherID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�����½�ʦ")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TheLastReFlashTeacherName { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "")]
            public Int32 DaysOfWeek { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "")]
            public Int32 PeriodOfPeriod { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "")]
            public Int32 WeeksOFTerm { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "")]
            public Int32 PeriodOfMatinal { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "")]
            public Int32 PeriodOfMorning { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "")]
            public Int32 PeriodOfAfternoon { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "")]
            public Int32 PeriodOfEvening { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String UsingSetting { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "")]
            public Int32 Priority { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "")]
            public DateTime StartDate { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "")]
            public DateTime EndDate { get; set; }


        }
    }
}
