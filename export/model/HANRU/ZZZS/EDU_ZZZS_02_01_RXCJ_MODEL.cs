namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZZS_02_01_RXCJ_metadata))]
    public partial class EDU_ZZZS_02_01_RXCJ
    {
        public EDU_ZZZS_02_01_RXCJ()
        {
        }
        public class EDU_ZZZS_02_01_RXCJ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ����Ϣ���ݱ�")]
            public Int32 XSXXID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ��")]
            public Int32 SCHOOLID { get; set; }


            [Display(Name = "��ѧ�ܷ�")]
            [Range(typeof(decimal), "0", "9999")]
            public decimal RXZF { get; set; }


            [Display(Name = "�п��ܷ�")]
            [Range(typeof(decimal), "0", "9999")]
            public decimal GKZF { get; set; }


            [Display(Name = "���ӷ�")]
            [Range(typeof(decimal), "0", "9999")]
            public decimal FJF { get; set; }


            [Display(Name = "���ӷ������")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FJFLBM { get; set; }


        }
    }
}
