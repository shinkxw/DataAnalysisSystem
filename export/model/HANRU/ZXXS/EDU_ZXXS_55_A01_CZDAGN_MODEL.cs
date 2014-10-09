namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXS_55_A01_CZDAGN_metadata))]
    public partial class EDU_ZXXS_55_A01_CZDAGN
    {
        public EDU_ZXXS_55_A01_CZDAGN()
        {
            GNMC = "";
            XSCKWZ = "";
            XSBJWZ = "";
            JSCKWZ = "";
            BZRBJWZ = "";
        }
        public class EDU_ZXXS_55_A01_CZDAGN_metadata
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
            public String GNMC { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ѧ���鿴��ַ")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XSCKWZ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ѧ���༭��ַ")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XSBJWZ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ʦ�鿴��ַ")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JSCKWZ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�����α༭��ַ")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZRBJWZ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�Ƿ���Ҫ���")]
            public Int32 SFXYDF { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ַ�ʽ")]
            public Int32 DFFSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����˳��")]
            public Int32 PLSX { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "״̬")]
            public Int32 ZT { get; set; }


        }
    }
}
