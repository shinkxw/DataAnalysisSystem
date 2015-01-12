namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_KTGL_05_A01_KTNR_metadata))]
    public partial class EDU_KTGL_05_A01_KTNR
    {
        public EDU_KTGL_05_A01_KTNR()
        {
            KTMC = "";
            KTFZRID = "";
            KTFZRQQ = "";
            KTFZRDH = "";
            CYRYMD = "";
            YJFA = "";
            YJCG = "";
            JTBG = "";
        }
        public class EDU_KTGL_05_A01_KTNR_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���⼶��")]
            public Int32 KTJBID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��������")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KTMC { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "���⸺����")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KTFZRID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "���⸺����QQ")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KTFZRQQ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "���⸺���˵绰")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KTFZRDH { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������Ա����")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CYRYMD { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�о�����")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YJFA { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�о��ɹ�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YJCG { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "���ⱨ��")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JTBG { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "Ŀ¼")]
            public Int32 MLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���״̬")]
            public Int32 SHZT { get; set; }


        }
    }
}
