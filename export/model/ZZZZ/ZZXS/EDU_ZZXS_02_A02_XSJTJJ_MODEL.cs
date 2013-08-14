namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZXS_02_A02_XSJTJJ_metadata))]
    public partial class EDU_ZZXS_02_A02_XSJTJJ
    {
        public EDU_ZZXS_02_A02_XSJTJJ()
        {
        }
        public class EDU_ZZXS_02_A02_XSJTJJ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ����Ϣ���ݱ�")]
            public Int32 XSXXID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ��")]
            public Int32 SCHOOLID { get; set; }


            [Display(Name = "�����˿�")]
            [Range(typeof(decimal), "0", "99")]
            public decimal SYRK { get; set; }


            [Display(Name = "�Ͷ����˿�")]
            [Range(typeof(decimal), "0", "99")]
            public decimal LDLRK { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ͥ�˾�������")]
            [Range(typeof(decimal), "0", "9999999")]
            public decimal JTRJYSR { get; set; }


            [Display(Name = "��ͥ�����")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JTLBM { get; set; }


            [Display(Name = "����ԭ����")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KNYYM { get; set; }


            [Display(Name = "���ѳ̶���")]
            [StringLength(2)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KNCDM { get; set; }


            [Display(Name = "�Ƿ�ͱ�")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SFDB { get; set; }


            [Display(Name = "��ѧǰ���������")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String RXQHKLBM { get; set; }


            [Display(Name = "��ѧ�صͱ���")]
            [Range(typeof(decimal), "0", "9999999")]
            public decimal JXDDBX { get; set; }


        }
    }
}
