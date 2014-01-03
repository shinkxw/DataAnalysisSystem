namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_23_A03_DGSXMHLM_metadata))]
    public partial class EDU_ZZJX_23_A03_DGSXMHLM
    {
        public EDU_ZZJX_23_A03_DGSXMHLM()
        {
            LMMC = "";
            LMLJ = "";
        }
        public class EDU_ZZJX_23_A03_DGSXMHLM_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��Ŀ����")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LMMC { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��Ŀ����")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LMLJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�㼶")]
            public Int32 CJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����Ŀ")]
            public Int32 FLMID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�Ƿ�����")]
            public Int32 SFQY { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����˳��")]
            public Int32 PLSX { get; set; }


        }
    }
}
