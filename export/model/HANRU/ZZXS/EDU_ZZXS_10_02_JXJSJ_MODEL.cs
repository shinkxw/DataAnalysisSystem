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
            HJSJ = new DateTime(1900, 1, 1);
            SFSH = "";
        }
        public class EDU_ZZXS_10_02_JXJSJ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XSXXID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ��")]
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


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ʱ��")]
            public DateTime HJSJ { get; set; }


            [Display(Name = "������λ�����")]
            [StringLength(60)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZZDWHGR { get; set; }


            [Display(Name = "��ѧ����Դ��")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JXJLYM { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�Ƿ����")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SFSH { get; set; }


        }
    }
}
