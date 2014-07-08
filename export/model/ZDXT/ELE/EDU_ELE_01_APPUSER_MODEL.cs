namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ELE_01_APPUSER_metadata))]
    public partial class EDU_ELE_01_APPUSER
    {
        public EDU_ELE_01_APPUSER()
        {
            YHID = "";
            YHMC = "";
        }
        public class EDU_ELE_01_APPUSER_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�û�")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YHID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "Ӧ��")]
            public Int32 APPID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�û�����")]
            [StringLength(36)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YHMC { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�û�״̬")]
            public Int32 YHZT { get; set; }


        }
    }
}
