namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZXS_10_02_JXJSJ_metadata))]
    public partial class EDU_ZZXS_10_02_JXJSJ
    {
        public EDU_ZZXS_10_02_JXJSJ()
        {
            JXJMC = "";
            JXJBH = "";
            JXJDJ = "";
            JXJLXM = "";
            BZ = "";
        }
        public class EDU_ZZXS_10_02_JXJSJ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ѧ������")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JXJMC { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ѧ����")]
            [StringLength(2)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JXJBH { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ѧ��ȼ�")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JXJDJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ѧ��������")]
            [StringLength(2)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JXJLXM { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ѧ���")]
            [Range(typeof(decimal), "0", "99999999")]
            public decimal JXJE { get; set; }


            [Display(Name = "������λ�����")]
            [StringLength(60)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZZDWHGR { get; set; }


            [Display(Name = "��ѧ����Դ��")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JXJLYM { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ע")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�Ƿ���")]
            public Int32 SFKQ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ÿѧ�ڿɻ�����")]
            public Int32 MXQKHJRS { get; set; }


        }
    }
}
