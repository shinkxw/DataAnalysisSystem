namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_50_A14_PJTM_metadata))]
    public partial class EDU_ZZJX_50_A14_PJTM
    {
        public EDU_ZZJX_50_A14_PJTM()
        {
            TMMC = "";
            PJZB = "";
        }
        public class EDU_ZZJX_50_A14_PJTM_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            public Int32 PJID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ַ�ʽ")]
            public Int32 PFFSID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��Ŀ����")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TMMC { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����ָ��")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PJZB { get; set; }


        }
    }
}
