namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_32_A03_XSPKJG_metadata))]
    public partial class EDU_ZZJX_32_A03_XSPKJG
    {
        public EDU_ZZJX_32_A03_XSPKJG()
        {
            AdmissionID = "";
        }
        public class EDU_ZZJX_32_A03_XSPKJG_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "רҵ�γ��ſ����")]
            public Int32 KCPKID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            public Int32 ExamID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            public Int32 EXAMROOMID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            public Int32 CCID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���Կ�Ŀ")]
            public Int32 KCQDID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 StudentID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��λ��")]
            public Int32 SeatID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "׼��֤��")]
            [StringLength(24)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String AdmissionID { get; set; }


        }
    }
}
