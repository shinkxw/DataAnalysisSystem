namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_07_03_XSXWSXQK_metadata))]
    public partial class EDU_ZZJX_07_03_XSXWSXQK
    {
        public EDU_ZZJX_07_03_XSXWSXQK()
        {
            SXQSRQ = "";
            QYBH = "";
            SFGMSXZRBX = "";
            SFSDGSX = "";
            XSHJXZM = "";
        }
        public class EDU_ZZJX_07_03_XSXWSXQK_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ��")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ʵϰ�����")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ����Ϣ")]
            public Int32 XSXXID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ҵ��")]
            public Int32 QYID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��λ��")]
            public Int32 GWID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ѵ��ʼ����")]
            [StringLength(8)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SXQSRQ { get; set; }


            [Display(Name = "��ѵ��������")]
            [StringLength(8)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SXJSRQ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ҵ���")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String QYBH { get; set; }


            [Display(Name = "��ѵ��λ����")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SXGWMC { get; set; }


            [Display(Name = "ʵѵ��ʦ")]
            [StringLength(36)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SXDS { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�Ƿ���ʵϰ���α���")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SFGMSXZRBX { get; set; }


            [Display(Name = "���շ�֧����")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BXFZFZ { get; set; }


            [Display(Name = "ʵϰн��")]
            [Range(typeof(decimal), "0", "9999999")]
            public decimal SXXC { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�Ƿ��Ƕ���ʵϰ")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SFSDGSX { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ѧ������������")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XSHJXZM { get; set; }


        }
    }
}
