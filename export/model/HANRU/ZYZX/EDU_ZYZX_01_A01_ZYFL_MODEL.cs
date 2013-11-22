namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZYZX_01_A01_ZYFL_metadata))]
    public partial class EDU_ZYZX_01_A01_ZYFL
    {
        public EDU_ZYZX_01_A01_ZYFL()
        {
            FLMC = "";
        }
        public class EDU_ZYZX_01_A01_ZYFL_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��������")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FLMC { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������")]
            public Int32 FFLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����˳��")]
            public Int32 PLSX { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�Ƿ���ҳչʾ")]
            public Int32 SFSYZS { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�Ƿ�����")]
            public Int32 SFQY { get; set; }


        }
    }
}
