namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJZ_01_A05_JZGKZSH_metadata))]
    public partial class EDU_ZXJZ_01_A05_JZGKZSH
    {
        public EDU_ZXJZ_01_A05_JZGKZSH()
        {
            SSDZB = "";
            BYYX = "";
            XXJL = "";
            GZJL = "";
            HJQK = "";
            ZC = "";
        }
        public class EDU_ZXJZ_01_A05_JZGKZSH_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "�̹�������Ϣ")]
            public Int32 JZGID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            public Int32 GL { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            public Int32 JL { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�߼���ְ����")]
            public Int32 GJRZNX { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�м���ְ����")]
            public Int32 ZJRZNX { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������ְ����")]
            public Int32 CJRZNX { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ְ����")]
            public Int32 RZNX { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������֧��")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SSDZB { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ҵԺУ")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BYYX { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ѧϰ����")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XXJL { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��������")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GZJL { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�����")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HJQK { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ְ��")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZC { get; set; }


        }
    }
}
