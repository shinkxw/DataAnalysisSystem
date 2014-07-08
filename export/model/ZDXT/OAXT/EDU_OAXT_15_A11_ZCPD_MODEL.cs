namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_15_A11_ZCPD_metadata))]
    public partial class EDU_OAXT_15_A11_ZCPD
    {
        public EDU_OAXT_15_A11_ZCPD()
        {
            Title = "";
            PanDate = DateTime.Now;
            PanTypeIDs = "";
            Remark = "";
        }
        public class EDU_OAXT_15_A11_ZCPD_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�̵�����")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Title { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�̵�����")]
            public DateTime PanDate { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�̵�Ŀ¼ID�б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PanTypeIDs { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ע")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Remark { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "״̬")]
            public Int32 Statu { get; set; }


        }
    }
}
