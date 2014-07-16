namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZYZX_01_A01_ZYML_metadata))]
    public partial class EDU_ZYZX_01_A01_ZYML
    {
        public EDU_ZYZX_01_A01_ZYML()
        {
            MLMC = "";
            URL = "";
            FMLIDLB = "";
        }
        public class EDU_ZYZX_01_A01_ZYML_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "Ŀ¼����")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String MLMC { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��Ŀ¼")]
            public Int32 FMLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����˳��")]
            public Int32 PLSX { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�Ƿ���ҳչʾ")]
            public Int32 SFSYZS { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�Ƿ�����")]
            public Int32 SFQY { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ַ")]
            [StringLength(500)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String URL { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��Ŀ¼ID�б�")]
            [StringLength(500)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FMLIDLB { get; set; }


        }
    }
}
