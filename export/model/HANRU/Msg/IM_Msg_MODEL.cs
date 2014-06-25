namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(IM_Msg_metadata))]
    public partial class IM_Msg
    {
        public IM_Msg()
        {
            UserTo = "";
            Title = "";
            AddTime = DateTime.Now;
            SendTime = DateTime.Now;
        }
        public class IM_Msg_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Display(Name = "�����û�")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String UserForm { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�����û�")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String UserTo { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����")]
            [StringLength(500)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Title { get; set; }


            [Display(Name = "����")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Contents { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��Ϣ����")]
            public Int32 MsgType { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ʱ��")]
            public DateTime AddTime { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ͳ�ʱ��")]
            public DateTime SendTime { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "״̬")]
            public Int32 Statu { get; set; }


        }
    }
}
