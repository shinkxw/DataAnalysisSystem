namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_32_A02_ZYKCPKJG_metadata))]
    public partial class EDU_ZZJX_32_A02_ZYKCPKJG
    {
        public EDU_ZZJX_32_A02_ZYKCPKJG()
        {
            NJID = "";
            BJID = "";
        }
        public class EDU_ZZJX_32_A02_ZYKCPKJG_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


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
            [Display(Name = "רҵ")]
            public Int32 ZYXXID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�꼶")]
            [StringLength(4)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NJID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�༶")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BJID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ο�����")]
            public Int32 CKRS { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ʵ������")]
            public Int32 SKRS { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���࿼��ʦ")]
            public Int32 ZJKLSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���࿼��ʦ")]
            public Int32 FJKLSID { get; set; }


        }
    }
}