namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_15_A06_ZCBG_metadata))]
    public partial class EDU_OAXT_15_A06_ZCBG
    {
        public EDU_OAXT_15_A06_ZCBG()
        {
            TypeName = "";
            Name = "";
            Option = "";
            RegistTime = DateTime.Now;
            Remark = "";
        }
        public class EDU_OAXT_15_A06_ZCBG_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���(���á����á�����)")]
            public Int32 TypeID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�������")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TypeName { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            public Int32 AID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�ʲ�����")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Name { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Option { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�Ǽ�ʱ��")]
            public DateTime RegistTime { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ע")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Remark { get; set; }


        }
    }
}
