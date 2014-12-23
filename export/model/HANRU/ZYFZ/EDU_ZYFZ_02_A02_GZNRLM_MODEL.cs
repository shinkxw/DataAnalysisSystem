namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZYFZ_02_A02_GZNRLM_metadata))]
    public partial class EDU_ZYFZ_02_A02_GZNRLM
    {
        public EDU_ZYFZ_02_A02_GZNRLM()
        {
            LMMC = "";
        }
        public class EDU_ZYFZ_02_A02_GZNRLM_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��Ŀ����")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LMMC { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��Ŀ���")]
            public Int32 LMLBID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ʹ��ģ��")]
            public Int32 SYMBID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���з�ʽ")]
            public Int32 PLFS { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����˳��")]
            public Int32 PLSX { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���������Ŀ")]
            public Int32 NMLLLM { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��Ŀ����")]
            public Int32 LMLX { get; set; }


        }
    }
}
