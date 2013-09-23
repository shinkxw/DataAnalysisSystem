namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_JPXT_01_01_JLCSJ_metadata))]
    public partial class EDU_JPXT_01_01_JLCSJ
    {
        public EDU_JPXT_01_01_JLCSJ()
        {
            PP = "";
            CPH = "";
            CJH = "";
        }
        public class EDU_JPXT_01_01_JLCSJ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ʱ��")]
            public DateTime GMSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�����ͺ�")]
            public Int32 CLXHID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "Ʒ��")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PP { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "���ƺ�")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CPH { get; set; }


            [Display(Name = "��������")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FDJH { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "���ܺ�")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CJH { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ʱ��")]
            public DateTime BFSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��������")]
            public DateTime EBRQ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ǰ״̬")]
            public Int32 DQZT { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ǰ����Ա")]
            public Int32 DQJLYID { get; set; }


            [Display(Name = "��ע")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


        }
    }
}
