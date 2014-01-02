namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXDY_05_A03_ZZDFD_metadata))]
    public partial class EDU_ZXDY_05_A03_ZZDFD
    {
        public EDU_ZXDY_05_A03_ZZDFD()
        {
            FSSJ = DateTime.Now;
            DFSJ = DateTime.Now;
            DFJSID = "";
            BZ = "";
        }
        public class EDU_ZXDY_05_A03_ZZDFD_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "ֵ�ܴ�ֵ���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ܴ�")]
            public Int32 ZCID { get; set; }


            [Display(Name = "�༶")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BJ { get; set; }


            [Display(Name = "ѧ��ID�б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XSIDLB { get; set; }


            [Display(Name = "ѧ�������б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XSMCLB { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ϸ��")]
            public Int32 SSXZID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ַ�ֵ")]
            [Range(typeof(decimal), "0", "999999")]
            public decimal DFFZ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ʱ��")]
            public DateTime FSSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ʱ��")]
            public DateTime DFSJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ֽ�ʦ")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DFJSID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ע")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


        }
    }
}
