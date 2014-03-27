namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXFC_02_01_JZWJBSJ_metadata))]
    public partial class EDU_ZXFC_02_01_JZWJBSJ
    {
        public EDU_ZXFC_02_01_JZWJBSJ()
        {
            JZWH = "";
            JZWMC = "";
            SYZKM = "";
            FWCQ = "";
            JZWFLM = "";
            JZWJGM = "";
            KZSFBZM = "";
            JZWDZ = "";
            JZWZKM = "";
            JZWWZZK = "";
            GHSPWH = "";
            CQZH = "";
            SFYGZZ = "";
            QL = "";
            GLY = "";
        }
        public class EDU_ZXFC_02_01_JZWJBSJ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校名")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "建筑物号")]
            [StringLength(6)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JZWH { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "建筑物名称")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JZWMC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "使用状况码")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SYZKM { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "房屋产权")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FWCQ { get; set; }


            [Display(Name = "校区号")]
            [StringLength(2)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XQH { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "建筑物分类码")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JZWFLM { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "建筑物结构码")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JZWJGM { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "建筑物层数")]
            [Range(typeof(decimal), "0", "99")]
            public decimal JZWCS { get; set; }


            [Display(Name = "建成年月")]
            [StringLength(6)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JCNY { get; set; }


            [Display(Name = "建筑物投资总额")]
            [Range(typeof(decimal), "0", "9999999")]
            public decimal JZWTZZE { get; set; }


            [Display(Name = "经费来源码")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JFLYM { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "总建筑面积")]
            [Range(typeof(decimal), "0", "99999999")]
            public decimal ZJZMJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "总使用面积")]
            [Range(typeof(decimal), "0", "99999999")]
            public decimal ZSYMJ { get; set; }


            [Display(Name = "抗震设防烈度码")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KZSFLDM { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "抗震设防标准码")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KZSFBZM { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "建筑物地址")]
            [StringLength(180)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JZWDZ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "建筑物状况码")]
            [StringLength(2)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JZWZKM { get; set; }


            [Display(Name = "建筑物图片")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JZWTP { get; set; }


            [Display(Name = "建筑物平面图")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JZWPMT { get; set; }


            [Display(Name = "学校单位层次码")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XXDWCCM { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "建筑物位置状况")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JZWWZZK { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "规划审批文号")]
            [StringLength(24)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GHSPWH { get; set; }


            [Display(Name = "综合防灾能力")]
            [StringLength(60)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZHFZNL { get; set; }


            [Display(Name = "规划使用年限")]
            [Range(typeof(decimal), "0", "999")]
            public decimal GHSYNX { get; set; }


            [Display(Name = "是否有预警避险措施")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SFYYJBXCS { get; set; }


            [Display(Name = "是否可用于应急避难场所")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SFKYYYJBNCS { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "产权证号")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CQZH { get; set; }


            [Display(Name = "建筑物用途码")]
            [StringLength(2)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JZWYTM { get; set; }


            [Display(Name = "建筑物总高度")]
            [Range(typeof(decimal), "0", "999")]
            public decimal JZWZGD { get; set; }


            [Display(Name = "危房鉴定部门")]
            [StringLength(60)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String WFJDBM { get; set; }


            [Display(Name = "危房鉴定文号")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String WFJDWH { get; set; }


            [Display(Name = "危房鉴定日期")]
            [StringLength(8)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String WFJDRQ { get; set; }


            [Display(Name = "供暖方式码")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GNFSM { get; set; }


            [Display(Name = "建筑物基础形式码")]
            [StringLength(2)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JZWJCXSM { get; set; }


            [Display(Name = "建筑物平面形式码")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JZWPMXSM { get; set; }


            [Display(Name = "建筑物楼板形式码")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JZWLBXSM { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "是否有构造柱")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SFYGZZ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "圈梁")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String QL { get; set; }


            [Display(Name = "最近安全改造完成日期")]
            [StringLength(8)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZJAQGZWCRQ { get; set; }


            [Display(Name = "最近安全改造后预计使用年限")]
            [Range(typeof(decimal), "0", "99")]
            public decimal ZJAQGZHYJSYNX { get; set; }


            [Display(Name = "专项类型")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZXLXM { get; set; }


            [Display(Name = "中央专项投资补助名称码")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZYZXTZBZMCM { get; set; }


            [Display(Name = "文物建筑等级码")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String WWJZDJM { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "教学及辅助用房")]
            [Range(typeof(decimal), "0", "99999999")]
            public decimal JXJFZYF { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "其中教室")]
            [Range(typeof(decimal), "0", "99999999")]
            public decimal QZJS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "其中实验室")]
            [Range(typeof(decimal), "0", "99999999")]
            public decimal QZSYS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "其中图书室")]
            [Range(typeof(decimal), "0", "99999999")]
            public decimal QZTSS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "其中微机室")]
            [Range(typeof(decimal), "0", "99999999")]
            public decimal QZWJS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "其中语音室")]
            [Range(typeof(decimal), "0", "99999999")]
            public decimal QZYYS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "其中体育活动室")]
            [Range(typeof(decimal), "0", "99999999")]
            public decimal QZTYHDS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "其中其他教辅用房")]
            [Range(typeof(decimal), "0", "99999999")]
            public decimal QZQTJFYF { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "生活用房")]
            [Range(typeof(decimal), "0", "99999999")]
            public decimal SHYF { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "其中学生宿舍")]
            [Range(typeof(decimal), "0", "99999999")]
            public decimal QZXSSS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "其中食堂")]
            [Range(typeof(decimal), "0", "99999999")]
            public decimal QZST { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "其中厕所")]
            [Range(typeof(decimal), "0", "99999999")]
            public decimal QZCS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "其中锅炉房(开水房)")]
            [Range(typeof(decimal), "0", "99999999")]
            public decimal QZGLF { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "其中浴室")]
            [Range(typeof(decimal), "0", "99999999")]
            public decimal QZYS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "其中教工宿舍")]
            [Range(typeof(decimal), "0", "99999999")]
            public decimal QZJGSS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "其中其他生活用房")]
            [Range(typeof(decimal), "0", "99999999")]
            public decimal QZQTSHYF { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "行政办公用房")]
            [Range(typeof(decimal), "0", "99999999")]
            public decimal XZBGYF { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "其中教职工办公室")]
            [Range(typeof(decimal), "0", "99999999")]
            public decimal QZJSBGS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "其中卫生保健室")]
            [Range(typeof(decimal), "0", "99999999")]
            public decimal QZWSBJS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "其中其他行政办公用房")]
            [Range(typeof(decimal), "0", "99999999")]
            public decimal QZQTXZBGYF { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "其他用房")]
            [Range(typeof(decimal), "0", "99999999")]
            public decimal QTYF { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "管理员")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GLY { get; set; }


        }
    }
}
