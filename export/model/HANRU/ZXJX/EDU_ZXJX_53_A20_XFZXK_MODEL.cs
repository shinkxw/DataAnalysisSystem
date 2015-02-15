namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJX_53_A20_XFZXK_metadata))]
    public partial class EDU_ZXJX_53_A20_XFZXK
    {
        public EDU_ZXJX_53_A20_XFZXK()
        {
            XKMC = "";
            XKKSSJ = DateTime.Now;
            XKJSSJ = DateTime.Now;
            ECXKKSSJ = DateTime.Now;
            ECXKJSSJ = DateTime.Now;
            XKFFYLC = "";
            KXKCLXIDLB = "";
            KXKCLXMCLB = "";
            XKBJIDLB = "";
        }
        public class EDU_ZXJX_53_A20_XFZXK_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ѡ������")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XKMC { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѡ�ο�ʼʱ��")]
            public DateTime XKKSSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѡ�ν���ʱ��")]
            public DateTime XKJSSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�Ƿ���������ѧ������ѡ��")]
            public Int32 SFYXSYXSECXK { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ѡ�ο�ʼʱ��")]
            public DateTime ECXKKSSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ѡ�ν���ʱ��")]
            public DateTime ECXKJSSJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ѡ�η���������")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XKFFYLC { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ѡ�γ�����ID�б�")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KXKCLXIDLB { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ѡ�γ����������б�")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KXKCLXMCLB { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ѡ�ΰ༶ID�б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XKBJIDLB { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ�����ѡ������")]
            public Int32 XSZDXKMS { get; set; }


        }
    }
}
