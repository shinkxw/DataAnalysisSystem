namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXS_51_A01_KHDL_metadata))]
    public partial class EDU_ZXXS_51_A01_KHDL
    {
        public EDU_ZXXS_51_A01_KHDL()
        {
            MC = "";
            KDJYHIDLB = "";
            KDJYHXMLB = "";
        }
        public class EDU_ZXXS_51_A01_KHDL_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String MC { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���˶���")]
            public Int32 KHDX { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ǼǷ�ʽ")]
            public Int32 DJFS { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�ɵǼ��û�ID�б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KDJYHIDLB { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�ɵǼ��û������б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KDJYHXMLB { get; set; }


        }
    }
}
