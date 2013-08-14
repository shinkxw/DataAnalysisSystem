namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZXS_01_A01_XSXX_metadata))]
    public partial class EDU_ZZXS_01_A01_XSXX
    {
        public EDU_ZZXS_01_A01_XSXX()
        {
            BYLX = "";
            XSLX = "";
            SFZS = "";
        }
        public class EDU_ZZXS_01_A01_XSXX_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ����Ϣ���ݱ�")]
            public Int32 XSXXID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ��")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "רҵ������Ϣ")]
            public Int32 ZYXXID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XNID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ�ڱ�")]
            public Int32 ZZXQID { get; set; }


            [Display(Name = "��ͥ��ַ������")]
            [StringLength(6)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JTDZQH { get; set; }


            [Display(Name = "��ͥ��ϸ��ַ")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JTXXDZ { get; set; }


            [Display(Name = "������ϸ��ַ")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HJXXDZ { get; set; }


            [Display(Name = "�������ʴ���")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HJXZ { get; set; }


            [Display(Name = "���˾�ѵ")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BYJX { get; set; }


            [Display(Name = "����������")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CSBZR { get; set; }


            [Display(Name = "�����κ���ְ��")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DRZW { get; set; }


            [Display(Name = "Ը�ⵣ�ΰ�ɲ�����ְ")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YYDR { get; set; }


            [Display(Name = "��ע")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ҵ������")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BYLX { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ѧ������")]
            [StringLength(5)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XSLX { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�Ƿ�ס��")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SFZS { get; set; }


            [Display(Name = "ѧ������ʱ��")]
            [StringLength(8)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XSBMSJ { get; set; }


        }
    }
}
