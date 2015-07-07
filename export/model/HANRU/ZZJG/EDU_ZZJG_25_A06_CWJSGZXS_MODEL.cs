namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_25_A06_CWJSGZXS_metadata))]
    public partial class EDU_ZZJG_25_A06_CWJSGZXS
    {
        public EDU_ZZJG_25_A06_CWJSGZXS()
        {
        }
        public class EDU_ZZJG_25_A06_CWJSGZXS_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ʦ")]
            public Int32 JSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ѧ�������")]
            [Range(typeof(decimal), "0", "9")]
            public decimal JXGLBL { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ��ѧ����")]
            [Range(typeof(decimal), "0", "9")]
            public decimal XXJXBL { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "֧���Ա���")]
            [Range(typeof(decimal), "0", "9")]
            public decimal ZCXBL { get; set; }


        }
    }
}
