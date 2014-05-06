namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXS_52_A02_PXMC_metadata))]
    public partial class EDU_ZXXS_52_A02_PXMC
    {
        public EDU_ZXXS_52_A02_PXMC()
        {
            MC = "";
            PXXMIDLB = "";
            PXXMMCLB = "";
            PXXSIDLB = "";
            PXXSXMLB = "";
            YQTX = "";
            NR = "";
        }
        public class EDU_ZXXS_52_A02_PXMC_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String MC { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ѡ��ĿID�б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PXXMIDLB { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ѡ��Ŀ�����б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PXXMMCLB { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ѡѧ��ID�б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PXXSIDLB { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ѡѧ�������б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PXXSXMLB { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��������")]
            [StringLength(1000)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YQTX { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "״̬")]
            public Int32 ZT { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NR { get; set; }


        }
    }
}
