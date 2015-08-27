namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_56_A03_Class_metadata))]
    public partial class EDU_ZZJX_56_A03_Class
    {
        public EDU_ZZJX_56_A03_Class()
        {
        }
        public class EDU_ZZJX_56_A03_Class_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��(˫)��")]
            public Int32 WeekCategory { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ڼ�")]
            public Int32 DayOfWeek { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ʱ��")]
            public Int32 TimeInterval { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ڴ�")]
            public Int32 Period { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�Ƿ��ſ�")]
            public Int32 Tabling { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��¼")]
            public Int32 RecordID { get; set; }


        }
    }
}
