namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZXS_10_03_ZXJSJ_metadata))]
    public partial class EDU_ZZXS_10_03_ZXJSJ
    {
        public EDU_ZZXS_10_03_ZXJSJ()
        {
            ZXJMC = "";
            ZXJLX = "";
            BZ = "";
        }
        public class EDU_ZZXS_10_03_ZXJSJ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ѧ���")]
            [Range(typeof(decimal), "0", "999999")]
            public decimal ZXJE { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ѧ������")]
            [StringLength(60)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZXJMC { get; set; }


            [Display(Name = "������λ�����")]
            [StringLength(60)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZZDWHGR { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ѧ������")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZXJLX { get; set; }


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
