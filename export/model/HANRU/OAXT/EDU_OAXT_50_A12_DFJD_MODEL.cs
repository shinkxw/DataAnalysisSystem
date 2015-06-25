namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_50_A12_DFJD_metadata))]
    public partial class EDU_OAXT_50_A12_DFJD
    {
        public EDU_OAXT_50_A12_DFJD()
        {
            JDMC = "";
            DFDXJDBMJH = "";
            DFJSLBIDLB = "";
            SHJSLBIDLB = "";
            DFZB = "";
            DFDXJDMCLB = "";
            DFJSLBMCLB = "";
            SHJSLBMCLB = "";
            DFDXCJMC = "";
            CKJSLBIDLB = "";
            CKJSLBMCLB = "";
        }
        public class EDU_OAXT_50_A12_DFJD_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��Ŀ")]
            public Int32 XMID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            public Int32 DLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ڵ�")]
            public Int32 FJDID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�Ƿ�����")]
            public Int32 SFDFX { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�ڵ�����")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JDMC { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�Ƿ�̳��ϼ�����")]
            public Int32 SFJCSJSZ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ֶ���ڵ���뼯��")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DFDXJDBMJH { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ֽ�ɫ���ID�б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DFJSLBIDLB { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��˽�ɫ���ID�б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SHJSLBIDLB { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ַ�ʽ")]
            public Int32 DFFSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ֶ���㼶")]
            public Int32 DFDXCJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���Ƶ��")]
            public Int32 DFPC { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "���ָ��")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DFZB { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ֶ���ڵ������б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DFDXJDMCLB { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ֽ�ɫ��������б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DFJSLBMCLB { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��˽�ɫ��������б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SHJSLBMCLB { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ֶ���㼶����")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DFDXCJMC { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�鿴��ɫ���ID�б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CKJSLBIDLB { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�鿴��ɫ��������б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CKJSLBMCLB { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�Ƿ��������")]
            public Int32 SFPLDF { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ǰ�ɲ��ֵ�λ")]
            public Int32 XQKBFDW { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���Ԥ��ֵ�λ")]
            public Int32 XHYDFDW { get; set; }


        }
    }
}
