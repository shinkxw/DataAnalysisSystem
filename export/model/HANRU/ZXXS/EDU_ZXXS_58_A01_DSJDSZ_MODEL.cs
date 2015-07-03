namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXS_58_A01_DSJDSZ_metadata))]
    public partial class EDU_ZXXS_58_A01_DSJDSZ
    {
        public EDU_ZXXS_58_A01_DSJDSZ()
        {
            KSSJ = DateTime.Now;
            JSSJ = DateTime.Now;
            KXXQIDLB = "";
            KXXQMCLB = "";
            KXDSIDLB = "";
            KXDSXMLB = "";
            FXKSSJ = DateTime.Now;
            FXJSSJ = DateTime.Now;
        }
        public class EDU_ZXXS_58_A01_DSJDSZ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ʼʱ��")]
            public DateTime KSSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ʱ��")]
            public DateTime JSSJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ѡѧ��ID�б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KXXQIDLB { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ѡѧ�������б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KXXQMCLB { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ѡ��ʦID�б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KXDSIDLB { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ѡ��ʦ�����б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KXDSXMLB { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ѡ��ʼʱ��")]
            public DateTime FXKSSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ѡ����ʱ��")]
            public DateTime FXJSSJ { get; set; }


        }
    }
}
