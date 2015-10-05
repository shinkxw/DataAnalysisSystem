namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_51_A01_DXJL_metadata))]
    public partial class EDU_OAXT_51_A01_DXJL
    {
        public EDU_OAXT_51_A01_DXJL()
        {
            Sender = "";
            Recipien = "";
            RecipienNumber = "";
            Date = DateTime.Now;
            Content = "";
        }
        public class EDU_OAXT_51_A01_DXJL_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Sender { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�ռ���")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Recipien { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�ռ��˺���")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String RecipienNumber { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ʱ��")]
            public DateTime Date { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��Ϣ����")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Content { get; set; }


        }
    }
}
