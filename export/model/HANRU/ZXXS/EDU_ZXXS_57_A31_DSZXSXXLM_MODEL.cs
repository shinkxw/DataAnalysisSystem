namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXS_57_A31_DSZXSXXLM_metadata))]
    public partial class EDU_ZXXS_57_A31_DSZXSXXLM
    {
        public EDU_ZXXS_57_A31_DSZXSXXLM()
        {
            LMMC = "";
            MBNR = "";
        }
        public class EDU_ZXXS_57_A31_DSZXSXXLM_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����Ŀ")]
            public Int32 FLMID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��Ŀ����")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LMMC { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��Ŀ����")]
            public Int32 LMLX { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����˳��")]
            public Int32 PLSX { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�Ƿ���Ҫ�༭")]
            public Int32 SFXYBJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ģ������")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String MBNR { get; set; }


        }
    }
}
