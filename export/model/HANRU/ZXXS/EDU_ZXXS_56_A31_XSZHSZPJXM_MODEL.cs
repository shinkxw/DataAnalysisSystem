namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXS_56_A31_XSZHSZPJXM_metadata))]
    public partial class EDU_ZXXS_56_A31_XSZHSZPJXM
    {
        public EDU_ZXXS_56_A31_XSZHSZPJXM()
        {
            XMMC = "";
            YS = "";
            GJBX = "";
        }
        public class EDU_ZXXS_56_A31_XSZHSZPJXM_metadata
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
            public String XMMC { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "Ҫ��")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YS { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�ؼ�����")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GJBX { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����������ַ�ʽ")]
            public Int32 ZWPDDFFSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "С��������ַ�ʽ")]
            public Int32 XZPDDFFSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����˳��")]
            public Int32 PLSX { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "״̬")]
            public Int32 ZT { get; set; }


        }
    }
}
