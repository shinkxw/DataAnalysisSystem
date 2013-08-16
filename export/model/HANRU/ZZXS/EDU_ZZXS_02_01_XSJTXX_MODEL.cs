namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZXS_02_01_XSJTXX_metadata))]
    public partial class EDU_ZZXS_02_01_XSJTXX
    {
        public EDU_ZZXS_02_01_XSJTXX()
        {
            JTZZ = "";
            JTYZBM = "";
            JTLXR = "";
        }
        public class EDU_ZZXS_02_01_XSJTXX_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ����Ϣ���ݱ�")]
            public Int32 XSXXID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ��")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ͥסַ")]
            [StringLength(180)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JTZZ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ͥ��������")]
            [StringLength(6)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JTYZBM { get; set; }


            [Display(Name = "��ͥ�绰")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JTDH { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ͥ��ϵ��")]
            [StringLength(36)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JTLXR { get; set; }


            [Display(Name = "��ͥ��������")]
            [StringLength(40)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JTDZXX { get; set; }


            [Display(Name = "��ͥ�˿�")]
            public Int32 JTRK { get; set; }


            [Display(Name = "��ͥ��Ҫ������Դ")]
            [StringLength(180)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JTZYSRLY { get; set; }


            [Display(Name = "��ͥ��������")]
            [Range(typeof(decimal), "0", "9999999")]
            public decimal JTYSRJE { get; set; }


            [Display(Name = "��ͥ��������")]
            [Range(typeof(decimal), "0", "9999999")]
            public decimal JTNSRJE { get; set; }


            [Display(Name = "��������վ")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LJZJHCZ { get; set; }


        }
    }
}
