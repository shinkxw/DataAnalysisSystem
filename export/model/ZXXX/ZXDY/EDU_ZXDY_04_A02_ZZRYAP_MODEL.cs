namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXDY_04_A02_ZZRYAP_metadata))]
    public partial class EDU_ZXDY_04_A02_ZZRYAP
    {
        public EDU_ZXDY_04_A02_ZZRYAP()
        {
            ZZBJ = "";
            ZZID = "";
            ZYIDLB = "";
        }
        public class EDU_ZXDY_04_A02_ZZRYAP_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "ֵ����Ա���ű�")]
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


            [Display(Name = "��ʼ����")]
            public DateTime KSRQ { get; set; }


            [Display(Name = "��������")]
            public DateTime JSRQ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ֵ�ܰ༶���")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZZBJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�鳤")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZZID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ԱID�б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZYIDLB { get; set; }


        }
    }
}
