namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ELE_03_YHSYJL_metadata))]
    public partial class EDU_ELE_03_YHSYJL
    {
        public EDU_ELE_03_YHSYJL()
        {
            YHID = "";
            GNMC = "";
            LJ = "";
            SYSJ = DateTime.Now;
        }
        public class EDU_ELE_03_YHSYJL_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "Ӧ��")]
            public Int32 APPID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            public Int32 MODULEID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�û�")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YHID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��������")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GNMC { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ʹ��ʱ��")]
            public DateTime SYSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ĺ�����")]
            public Int32 XHHMS { get; set; }


        }
    }
}
